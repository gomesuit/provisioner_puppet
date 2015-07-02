class testmodule_template (
  $var1 = "default var1"
) {
  file { '/tmp/file_from_testmodule_template':
    ensure  => file,
    mode    => '644',
    owner   => 'root',
    group   => 'root',
    content => template('testmodule_template/template1'),
  }
}
