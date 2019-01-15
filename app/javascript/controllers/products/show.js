import BaseController from "controllers/base"

import $ from "jquery"

class Controller extends BaseController {
  call() {
    console.log('show action called');
    bindHistoryModal.call(this);
    bindCopyModal.call(this);
    bindFeatureBtn.call(this);
    bindDetailsBtn.call(this);
  }

};

let bindHistoryModal = function () {
  // handle click on the button
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

  // handle click on the icon
  this.root.find('.fa-folder').on('click', (e) => {
    console.log('bindHistoryModal called');
    e.preventDefault();
    e.stopPropagation();
    let url = e.target.offsetParent.href

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
  // handle click on the button
  this.root.find('.btn-copy').on('click', (e) => {
    console.log('copy clicked');
    console.info(e);
    e.preventDefault();
    let url = e.target.href
    console.log(url);
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

  // handle click on the icon
  this.root.find('.fa-copy').on('click', (e) => {
    console.log('copy clicked');
    console.info(e);
    e.preventDefault();
    e.stopPropagation();
    let url = e.target.offsetParent.href
    console.log(url);
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

let bindFeatureBtn = function () {
  this.root.find('#featureBtn').on('click', (e) => {
    console.log('Feature clicked');
    this.root.find('#feature-list-modal').modal('show')
  })
}

let bindDetailsBtn = function () {
  this.root.find('#detailsBtn').on('click', (e) => {
    console.log('Details clicked');
    this.root.find('#detail-list-modal').modal('show')
  })
}

export default Controller;