.class final Lcom/keniu/security/commumgr/a;
.super Ljava/lang/Object;
.source "CallLocateLayoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/commumgr/a;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/keniu/security/commumgr/a;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->a(Lcom/keniu/security/commumgr/CallLocateLayoutActivity;)V

    .line 49
    iget-object v0, p0, Lcom/keniu/security/commumgr/a;->a:Lcom/keniu/security/commumgr/CallLocateLayoutActivity;

    invoke-virtual {v0}, Lcom/keniu/security/commumgr/CallLocateLayoutActivity;->finish()V

    .line 50
    return-void
.end method
