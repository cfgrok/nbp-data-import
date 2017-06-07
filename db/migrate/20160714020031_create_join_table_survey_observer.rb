class CreateJoinTableSurveyObserver < ActiveRecord::Migration
  def change
    create_join_table :surveys, :observers do |t|
      t.references :survey, index: true, null: false, foreign_key: { name: 'surveys_observers_survey_id_fkey' }
      t.references :observer, index: true, null: false, foreign_key: { name: 'surveys_observers_observer_id_fkey' }
      #t.index [:survey_id, :observer_id], type: 'pkey'
      t.index [:observer_id, :survey_id]
    end

    execute 'ALTER TABLE observers_surveys ADD PRIMARY KEY (survey_id, observer_id)'
  end
end
