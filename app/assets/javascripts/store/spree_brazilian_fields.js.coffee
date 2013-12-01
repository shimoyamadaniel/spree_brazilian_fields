#= require store/spree_frontend
#= require jquery.mask.min
$("input[name*='cpf']").mask('000.000.000-00', {reverse: true});
$("input[name*='birthday']").mask('00/00/0000', {reverse: true})
