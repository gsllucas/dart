void main() {
  Repository service = DioService();

  getData() {
    service.get();
  }

  getData();
}

abstract class Repository {
  void get();
  void put();
  void post();
  void delete();
}

class HttpService implements Repository {
  @override
  void get() {
    print('get data');
  }

  @override
  void put() {
    print('put data');
  }

  @override
  void post() {
    print('post data');
  }

  @override
  void delete() {
    print('delete data');
  }
}

class DioService implements Repository {
  @override
  void get() {
    print('get data');
  }

  @override
  void put() {
    print('put data');
  }

  @override
  void post() {
    print('post data');
  }

  @override
  void delete() {
    print('delete data');
  }
}
