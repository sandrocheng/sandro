.class final Lcom/keniu/security/protection/ui/al;
.super Ljava/lang/Object;
.source "PreventTheftWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/keniu/security/protection/ui/al;->a:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 325
    return-void
.end method
