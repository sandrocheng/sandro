.class public final Lcom/keniu/security/main/a/ae;
.super Lcom/keniu/security/main/a/aa;
.source "PrefManuCheckModule.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/keniu/security/main/a/aa;-><init>()V

    .line 186
    const-string v0, "\u8fd0\u8425\u5546\u8bbe\u7f6e"

    iput-object v0, p0, Lcom/keniu/security/main/a/ae;->a:Ljava/lang/String;

    .line 187
    const-string v0, "\u7acb\u5373\u8bbe\u7f6e"

    iput-object v0, p0, Lcom/keniu/security/main/a/ae;->b:Ljava/lang/String;

    .line 188
    const-string v0, "\u5df2\u8bbe\u7f6e"

    iput-object v0, p0, Lcom/keniu/security/main/a/ae;->c:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lcom/keniu/security/main/a/ae;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/keniu/security/main/a/ae;->d:Ljava/lang/String;

    .line 190
    const-string v0, "\u672a\u8bbe\u7f6e"

    iput-object v0, p0, Lcom/keniu/security/main/a/ae;->e:Ljava/lang/String;

    .line 191
    const-string v0, "\u8fd0\u8425\u5546\u662f\u5426\u8bbe\u7f6e"

    iput-object v0, p0, Lcom/keniu/security/main/a/ae;->f:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 201
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    const-string v1, "context"

    const-string v2, "Traffic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 196
    invoke-static {p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v0

    return v0
.end method
