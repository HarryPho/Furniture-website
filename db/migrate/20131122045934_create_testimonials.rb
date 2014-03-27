class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.integer :testimonial_id
      t.text :testimonial_content
      t.date :testimonial_date
      t.integer :customer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :testimonials
  end
end
