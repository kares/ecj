module ECJ
  JAR_VERSION = '4.3.1'
  JAR = File.expand_path("../../jar/ecj-#{JAR_VERSION}.jar", File.dirname(__FILE__))

  def self.load_jar; load(JAR) end
end