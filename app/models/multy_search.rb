# frozen_string_literal: true

class MultySearch
  MODELS_TO_SEARCH = [Answer, Question, Comment].freeze

  def initialize
    @raw_data = nil
    @results = nil
  end

  def search(search_word, page = nil, per_page = nil)
    page ||= 1
    per_page ||= 10
    save_data run_elastic(search_word, page, per_page)
    self
  end

  attr_reader :raw_data

  attr_reader :results

  private

  def run_elastic(search_word, page, per_page)
    Elasticsearch::Model
      .search(search_query(search_word), MODELS_TO_SEARCH)
      .paginate(page: page, per_page: per_page)
  end

  def save_data(data)
    @raw_data = data
    @results = create_answers(data)
  end

  def create_answers(data)
    data.records.map do |result|
      {
        hint: build_hint(result),
        record_type: result.class.name,
        record_id: result.id
      }
    end
  end

  def search_query(query)
    {
      query: {
        bool: {
          must: {
            multi_match: {
              query: query,
              fields: %w[title description],
              operator: 'and'
            }
          },
          filter: [
            {
              term: { searching: true }
            }
          ]
        }
      }
    }
  end

  def build_hint(record)
    {
      title: record.title,
      preview: record.preview,
      type: hint_type(record)
    }end
end
