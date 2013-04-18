.class final Lcom/keniu/security/commumgr/g;
.super Ljava/lang/Object;
.source "NumLocateQueryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/keniu/security/commumgr/g;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/keniu/security/commumgr/g;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->a(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/keniu/security/commumgr/g;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->b(Lcom/keniu/security/commumgr/NumLocateQueryActivity;)V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/keniu/security/commumgr/g;->a:Lcom/keniu/security/commumgr/NumLocateQueryActivity;

    invoke-static {v1, v0}, Lcom/keniu/security/commumgr/NumLocateQueryActivity;->a(Lcom/keniu/security/commumgr/NumLocateQueryActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
