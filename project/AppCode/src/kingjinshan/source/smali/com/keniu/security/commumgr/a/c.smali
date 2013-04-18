.class public final Lcom/keniu/security/commumgr/a/c;
.super Lcom/keniu/security/commumgr/a/d;
.source "RpActStart.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/keniu/security/commumgr/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    sget-boolean v0, Lcom/keniu/security/commumgr/a/e;->s:Z

    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x1

    sput-boolean v0, Lcom/keniu/security/commumgr/a/e;->s:Z

    .line 9
    sput-boolean v1, Lcom/keniu/security/commumgr/a/e;->t:Z

    .line 10
    sput-boolean v1, Lcom/keniu/security/commumgr/a/e;->w:Z

    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/keniu/security/commumgr/a/p;

    sget-object v1, Lcom/keniu/security/commumgr/a/q;->c:Lcom/keniu/security/commumgr/a/q;

    invoke-direct {v0, v1}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;)V

    throw v0
.end method
