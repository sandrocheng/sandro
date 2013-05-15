.class Lcom/avast/android/mobilesecurity/filebrowser/b;
.super Ljava/lang/Object;
.source "SystemFileBrowserAdapter.java"

# interfaces
.implements Lcom/avast/android/generic/filebrowser/h;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/filebrowser/a;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/filebrowser/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/b;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/filebrowser/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/b;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(Lcom/avast/android/mobilesecurity/filebrowser/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 129
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/b;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/filebrowser/a;->b(Lcom/avast/android/mobilesecurity/filebrowser/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/filebrowser/c;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/avast/android/mobilesecurity/filebrowser/c;-><init>(Lcom/avast/android/mobilesecurity/filebrowser/b;Ljava/util/List;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :cond_0
    return-void
.end method
