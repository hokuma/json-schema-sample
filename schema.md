## <a name="resource-todo"></a>Todo

FIXME

### Attributes

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when todo was created | `"2015-01-01T12:00:00Z"` |
| **id** | *integer* | unique identifier of todo | `42` |
| **body** | *string* | todo body<br/> **Length:** `0..255` | `"example"` |
| **status** | *number* | todo status<br/> **one of:**`1` or `2` | `42.0` |
| **updated_at** | *date-time* | when todo was updated | `"2015-01-01T12:00:00Z"` |

### Todo Create

Create a new todo.

```
POST /todos
```

#### Required Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **body** | *string* | todo body<br/> **Length:** `0..255` | `"example"` |


#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **status** | *number* | todo status<br/> **one of:**`1` or `2` | `42.0` |


#### Curl Example

```bash
$ curl -n -X POST https://api.todo.com/todos \
  -H "Content-Type: application/json" \
 \
  -d '{
  "body": "example",
  "status": 42.0
}'
```


#### Response Example

```
HTTP/1.1 201 Created
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "body": "example",
  "status": 42.0,
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Todo Delete

Delete an existing todo.

```
DELETE /todos/{todo_id}
```


#### Curl Example

```bash
$ curl -n -X DELETE https://api.todo.com/todos/$TODO_ID \
  -H "Content-Type: application/json" \
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "body": "example",
  "status": 42.0,
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Todo Info

Info for existing todo.

```
GET /todos/{todo_id}
```


#### Curl Example

```bash
$ curl -n https://api.todo.com/todos/$TODO_ID
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "body": "example",
  "status": 42.0,
  "updated_at": "2015-01-01T12:00:00Z"
}
```

### Todo List

List existing todos.

```
GET /todos
```


#### Curl Example

```bash
$ curl -n https://api.todo.com/todos
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
[
  {
    "created_at": "2015-01-01T12:00:00Z",
    "id": 42,
    "body": "example",
    "status": 42.0,
    "updated_at": "2015-01-01T12:00:00Z"
  }
]
```

### Todo Update

Update an existing todo.

```
PATCH /todos/{todo_id}
```

#### Optional Parameters

| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **body** | *string* | todo body<br/> **Length:** `0..255` | `"example"` |
| **status** | *number* | todo status<br/> **one of:**`1` or `2` | `42.0` |


#### Curl Example

```bash
$ curl -n -X PATCH https://api.todo.com/todos/$TODO_ID \
  -H "Content-Type: application/json" \
 \
  -d '{
  "body": "example",
  "status": 42.0
}'
```


#### Response Example

```
HTTP/1.1 200 OK
```

```json
{
  "created_at": "2015-01-01T12:00:00Z",
  "id": 42,
  "body": "example",
  "status": 42.0,
  "updated_at": "2015-01-01T12:00:00Z"
}
```


