.class public final Lcom/keniu/security/main/a/w;
.super Lcom/keniu/security/main/a/v;
.source "PrefBooleanCheckModule.java"


# instance fields
.field private i:Lcom/keniu/security/traffic/y;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/keniu/security/main/a/v;-><init>()V

    .line 168
    const-string v0, "\u6d41\u91cf\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/w;->a:Ljava/lang/String;

    .line 169
    const-string v0, "\u662f\u5426\u5f00\u542f\u6d41\u91cf\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/w;->f:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/keniu/security/main/a/w;->i:Lcom/keniu/security/traffic/y;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/keniu/security/traffic/y;->a:Z

    .line 188
    iget-object v0, p0, Lcom/keniu/security/main/a/w;->i:Lcom/keniu/security/traffic/y;

    const v1, 0x7f0b03c0

    invoke-virtual {v0, p1, v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 189
    invoke-static {p1}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;)V

    .line 190
    const-string v0, "\u5f00\u542f\u6d41\u91cf\u76d1\u63a7"

    iput-object v0, p0, Lcom/keniu/security/main/a/w;->a:Ljava/lang/String;

    .line 191
    return-void
.end method

.method protected final c(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    .line 176
    invoke-static {p1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/main/a/w;->i:Lcom/keniu/security/traffic/y;

    .line 177
    iget-object v0, p0, Lcom/keniu/security/main/a/w;->i:Lcom/keniu/security/traffic/y;

    iget-boolean v0, v0, Lcom/keniu/security/traffic/y;->a:Z

    .line 178
    if-eqz v0, :cond_0

    .line 179
    const-string v1, "\u6d41\u91cf\u76d1\u63a7"

    iput-object v1, p0, Lcom/keniu/security/main/a/w;->a:Ljava/lang/String;

    .line 182
    :goto_0
    return v0

    .line 181
    :cond_0
    const-string v1, "\u672a\u5f00\u542f\u6d41\u91cf\u76d1\u63a7"

    iput-object v1, p0, Lcom/keniu/security/main/a/w;->a:Ljava/lang/String;

    goto :goto_0
.end method
