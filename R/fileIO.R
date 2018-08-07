#' @export
read_NWB = function(filename){
    rhdf5::h5read(filename,'/')
}



NWB_file = function(identifier,
                    session_description,
                    file_create_date = Sys.time() %>%
                      strftime(format = '%Y-%m-%d %H:%M:%S'),
                    session_start_time = Sys.time() %>%
                      strftime(format = '%Y-%m-%d %H:%M:%S')){

  newNWB = list(acquisiton = NULL,
                analysis = NULL,
                file_create_date = file_create_date,
                general = NULL,
                identifier = identifier,
                processing = NULL,
                session_description = session_description,
                session_start_time = session_start_time,
                stimulus =
                  list(presentation = NULL,
                       templates = NULL))


  return(newNWB)


}



write_NWB = function(nwb,file){
    h5write(nwb,file,'/')
}
