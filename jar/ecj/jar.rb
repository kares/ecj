module ECJ
  JAR_VERSION = '3.8.2'
  JAR = File.expand_path("../../jar/ecj-#{JAR_VERSION}.jar", File.dirname(__FILE__))

  def self.load_jar; load(JAR) end
end