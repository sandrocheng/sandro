.class Lcom/avast/android/mobilesecurity/filebrowser/d;
.super Ljava/lang/Object;
.source "SystemFileBrowserAdapter.java"

# interfaces
.implements Lcom/avast/android/generic/filebrowser/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/mobilesecurity/filebrowser/a;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/filebrowser/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/d;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/filebrowser/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/d;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/filebrowser/a;->a(Lcom/avast/android/mobilesecurity/filebrowser/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 155
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/d;->b:Lcom/avast/android/mobilesecurity/filebrowser/a;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/filebrowser/a;->b(Lcom/avast/android/mobilesecurity/filebrowser/a;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/filebrowser/e;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/avast/android/mobilesecurity/filebrowser/e;-><init>(Lcom/avast/android/mobilesecurity/filebrowser/d;Ljava/util/List;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    :cond_0
    return-void
.end method
