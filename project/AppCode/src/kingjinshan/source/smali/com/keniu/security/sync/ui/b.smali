.class final Lcom/keniu/security/sync/ui/b;
.super Ljava/lang/Object;
.source "AccountMgrAct.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/AccountMgrAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/AccountMgrAct;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/keniu/security/sync/ui/b;->a:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/keniu/security/sync/ui/b;->a:Lcom/keniu/security/sync/ui/AccountMgrAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/AccountMgrAct;->a()V

    .line 83
    return-void
.end method
