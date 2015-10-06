module ApplicationHelper
  CHARACTERS = %w(alister enzo jin dimitri milo)

  def on_root_path? ; request.fullpath == root_path ; end
  def random_character ; CHARACTERS.shuffle.shift ; end
end
