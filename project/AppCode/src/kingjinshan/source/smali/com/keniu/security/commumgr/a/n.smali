.class final Lcom/keniu/security/commumgr/a/n;
.super Ljava/lang/Object;
.source "RpDlgCallback.java"

# interfaces
.implements Lcom/keniu/security/util/w;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/keniu/security/commumgr/a/l;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/a/l;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/n;->c:Lcom/keniu/security/commumgr/a/l;

    iput p2, p0, Lcom/keniu/security/commumgr/a/n;->a:I

    iput p3, p0, Lcom/keniu/security/commumgr/a/n;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    iget v1, p0, Lcom/keniu/security/commumgr/a/n;->a:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    .line 22
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    iget v1, p0, Lcom/keniu/security/commumgr/a/n;->b:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    .line 26
    return-void
.end method
