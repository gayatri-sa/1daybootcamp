node 'puppetnode1' {
  notify {'debug2':
    message => $osfamily,
    withpath => true
  }
}
