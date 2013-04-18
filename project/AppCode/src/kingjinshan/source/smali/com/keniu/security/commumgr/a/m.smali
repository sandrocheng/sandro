.class final Lcom/keniu/security/commumgr/a/m;
.super Ljava/lang/Object;
.source "RpDlgCallback.java"

# interfaces
.implements Lcom/keniu/security/util/z;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/commumgr/a/l;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/a/l;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    iput-object p1, p0, Lcom/keniu/security/commumgr/a/m;->b:Lcom/keniu/security/commumgr/a/l;

    iput p2, p0, Lcom/keniu/security/commumgr/a/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    iget v1, p0, Lcom/keniu/security/commumgr/a/m;->a:I

    invoke-virtual {v0, v1}, Lcom/keniu/security/commumgr/a/r;->a(I)V

    .line 13
    return-void
.end method
