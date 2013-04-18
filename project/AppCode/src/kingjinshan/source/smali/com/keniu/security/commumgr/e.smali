.class public final Lcom/keniu/security/commumgr/e;
.super Ljava/lang/Object;
.source "CommuMgrConfig.java"


# static fields
.field public static final a:Z = true

.field public static final b:Z = true

.field public static final c:Z


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/keniu/security/commumgr/e;->d:Landroid/content/Context;

    .line 24
    const v0, 0x7f0b045b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/e;->e:Ljava/lang/String;

    .line 25
    const v0, 0x7f0b045c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/e;->f:Ljava/lang/String;

    .line 26
    const v0, 0x7f0b045a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/commumgr/e;->g:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 37
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/keniu/security/commumgr/e;->b(Ljava/lang/String;Z)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->f:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/keniu/security/commumgr/e;->b(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->e:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->g:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/keniu/security/commumgr/e;->g:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/keniu/security/commumgr/e;->b(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method
