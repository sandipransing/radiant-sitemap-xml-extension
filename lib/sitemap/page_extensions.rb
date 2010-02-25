module Sitemap::PageExtensions
  def self.included(base)
    base.class_eval {
      named_scope :sitemap, :conditions => {:sitemap => true, :status_id => 100, :virtual => false}, :order => "updated_at DESC"
    }
  end
end
