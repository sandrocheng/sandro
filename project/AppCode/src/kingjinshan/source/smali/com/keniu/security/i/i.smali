.class final Lcom/keniu/security/i/i;
.super Ljava/lang/Object;
.source "FileDownWatcher.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final synthetic a:Lcom/keniu/security/i/h;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/h;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/keniu/security/i/i;->a:Lcom/keniu/security/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 4
    .parameter

    .prologue
    .line 256
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/keniu/security/i/i;->a:Lcom/keniu/security/i/h;

    iget-object v0, v0, Lcom/keniu/security/i/h;->a:Lcom/keniu/security/i/f;

    iget-object v0, v0, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    iget-object v0, v0, Lcom/keniu/security/i/c;->e:Lcom/keniu/security/i/t;

    iget-object v1, p0, Lcom/keniu/security/i/i;->a:Lcom/keniu/security/i/h;

    iget-object v1, v1, Lcom/keniu/security/i/h;->a:Lcom/keniu/security/i/f;

    iget-object v1, v1, Lcom/keniu/security/i/f;->d:Lcom/keniu/security/i/c;

    const/16 v2, 0x8

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/i/t;->a(Ljava/lang/Object;ILjava/lang/String;)I

    .line 261
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
