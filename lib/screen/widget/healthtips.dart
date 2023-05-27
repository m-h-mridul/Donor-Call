//**health tips data modeing in here */
class HealthTips {
  String headImage = '';
  String headline = '';
  String discrbtion='';
  List<ItemDiscribtion> item = [];
  HealthTips({
    this.headImage = '',
    this.headline = '',
    this.discrbtion='',
  });
}

class ItemDiscribtion {
  String name = '';
  String image = '';
  String discribtion = '';
  String suggetion='';
  ItemDiscribtion({
    this.name = '',
    this.image = '',
    this.discribtion = '',
     this.suggetion = '',
  });
}
