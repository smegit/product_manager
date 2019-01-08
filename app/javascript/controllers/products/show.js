import BaseController from "controllers/base"

import $ from "jquery"

class Controller extends BaseController {
  call() {
    console.log('show action called');
    bindHistoryModal.call(this);
    bindCopyModal.call(this);
  }

};

let bindHistoryModal = function () {
  this.root.find('.btn-history').on('click', (e) => {
    console.log('bindHistoryModal called');
    e.preventDefault();

    let url = e.target.href

    console.info(this.root.find('#modal-container .modal'))
    $.ajax({
      url: url,
      method: 'get',
      dataType: "json"
    }).done((response) => {
      console.info(response);
      this.root.find('#modal-container').html(response.html)
      this.root.find('#modal-container .modal').modal('show')
    })
  })
}

let bindCopyModal = function () {
  console.info(this);
  this.root.find('.btn-copy').on('click', (e) => {
    console.log('copy clicked');
    console.info(e);
    e.preventDefault();
    let url = e.target.href

    $.ajax({
      url: url,
      method: 'get',
      dataType: "json"
    }).done((response) => {
      console.info(response);
      this.root.find('#modal-container').html(response.html)
      this.root.find('#modal-container .modal').modal('show')
    })
  })
}

export default Controller;