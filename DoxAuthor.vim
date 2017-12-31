function! <SID>DoxygenAuthorFunc()
  call s:InitializeParameters()

  " Test authorName variable
  if !exists("g:DoxygenToolkit_authorName")
    let g:DoxygenToolkit_authorName = input("Enter name of the author (generally yours...) : ")
  endif

  " Test versionString variable
  if !exists("g:DoxygenToolkit_versionString")
    let g:DoxygenToolkit_versionString = input("Enter version string : ")
  endif

  " Get file name
  let l:fileName = expand('%:t')

  let l:date = strftime("%Y-%m-%d")
  " Begin to write skeleton
  let l:insertionMode = s:StartDocumentationBlock()
  exec "normal "."O"."// +FHDR---------------------------------------------------"
  exec "normal ".l:insertionMode."//                        张金帅创建"
  exec "normal ".l:insertionMode."// --------------------------------------------------------"
  exec "normal ".l:insertionMode."// PROJECT         ："
  exec "normal ".l:insertionMode."// AUTHOR          ：jszhang"
  exec "normal ".l:insertionMode."// --------------------------------------------------------"
  exec "normal ".l:insertionMode."//RELEASE HISTORY"
  exec "normal ".l:insertionMode."//VERSION   DATE    AUTHOR   DESCRIPTION"
  exec "normal ".l:insertionMode."//  ".g:DoxygenToolkit_versionString."  ".l:date." jszhang     ".l:fileName 
  exec "normal ".l:insertionMode."//---------------------------------------------------------"
  exec "normal ".l:insertionMode."//ABSTRACT   :"
  exec "normal ".l:insertionMode."// -FHDR---------------------------------------------------"
  exec "normal "."jdd"
  " Move the cursor to the rigth position

  call s:RestoreParameters()
  startinsert!
endfunction
