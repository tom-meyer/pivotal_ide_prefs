require "cli/configuration"

class Cli::Configuration::RepoConfiguration
  def initialize(
    backup_prefs_repo_location:   nil,
    pivotal_prefs_repo_location:  nil,
    user_prefs_repo_location:     nil,
    backups_location_base:        File.expand_path(File.join("~", ".pivotal_ide_prefs", "backups")),
    pivotal_prefs_location_base:  File.expand_path(File.join(__dir__, "..", "..", "..", "..", "pref_sources")),
    ide_name:                     nil
  )
    @backup_prefs_repo_location   = backup_prefs_repo_location
    @pivotal_prefs_repo_location  = pivotal_prefs_repo_location
    @user_prefs_repo_location     = user_prefs_repo_location

    @backups_location_base        = backups_location_base
    @pivotal_prefs_location_base  = pivotal_prefs_location_base
    @ide_name                     = ide_name
  end

  def backup_prefs_repo_location
    @backup_prefs_repo_location || File.join(@backups_location_base, @ide_name)
  end

  def pivotal_prefs_repo_location
    @pivotal_prefs_repo_location || File.join(@pivotal_prefs_location_base, @ide_name)
  end

  def user_prefs_repo_location
    @user_prefs_repo_location
  end
end
