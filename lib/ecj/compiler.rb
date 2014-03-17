require 'ecj/jar'

module ECJ
  
  self.load_jar # add the ecj.jar to CLASSPATH

  include_package 'org.eclipse.jdt.core.compiler'

  Compiler = org.eclipse.jdt.internal.compiler.tool.EclipseCompiler
  BatchCompiler = org.eclipse.jdt.core.compiler.batch.BatchCompiler
  Main = org.eclipse.jdt.internal.compiler.batch.Main

end