.class final Lcom/keniu/security/protection/ui/c;
.super Ljava/lang/Object;
.source "PreventTheftCommandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/keniu/security/protection/ui/c;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/keniu/security/protection/ui/c;->a:Lcom/keniu/security/protection/ui/PreventTheftCommandActivity;

    const v1, 0x7f0b07ef

    invoke-static {v0, v1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;I)V

    .line 52
    return-void
.end method
