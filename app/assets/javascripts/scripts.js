$(function() {
  $(".table").dataTable({
    bPaginate: false,
    bInfo: false
  })
  $(".dataTables_filter").find("input").prop("placeholder", "Search")

})


