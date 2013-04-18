.class final Lcom/keniu/security/protection/ui/ak;
.super Ljava/lang/Object;
.source "PreventTheftWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/keniu/security/protection/ui/ak;->b:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    iput p2, p0, Lcom/keniu/security/protection/ui/ak;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/keniu/security/protection/ui/ak;->b:Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    iget v1, p0, Lcom/keniu/security/protection/ui/ak;->a:I

    invoke-static {v0, p2, v1}, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;->a(Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;II)V

    .line 267
    return-void
.end method
