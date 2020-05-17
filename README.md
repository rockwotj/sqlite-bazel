# SQLite Bazel

A monthly updating version of [SQLite3 in Amalgamation Form](https://www.sqlite.org/howtocompile.html#amalgamation_versus_individual_source_files)
consumable by [Bazel](https://bazel.build/).

Usage looks like dropping this in your WORKSPACE file:

```python
SQLITE_BAZEL_COMMIT = "<pick the latest commit here>"

http_archive(
    name = "com_github_rockwotj_sqlite_bazel",
    strip_prefix = "sqlite-bazel-" + SQLITE_BAZEL_COMMIT,
    urls = ["https://github.com/rockwotj/sqlite-bazel/archive/%s.zip" % SQLITE_BAZEL_COMMIT],
)
```

Then sqlite is available as `@com_github_rockwotj_sqlite_bazel//:sqlite3`.
