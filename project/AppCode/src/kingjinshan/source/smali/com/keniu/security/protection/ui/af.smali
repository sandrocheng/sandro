.class final Lcom/keniu/security/protection/ui/af;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/CheckBoxPreference;

.field final synthetic b:Lcom/keniu/security/protection/ui/ad;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/ad;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/keniu/security/protection/ui/af;->b:Lcom/keniu/security/protection/ui/ad;

    iput-object p2, p0, Lcom/keniu/security/protection/ui/af;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/keniu/security/protection/ui/af;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 150
    return-void
.end method
