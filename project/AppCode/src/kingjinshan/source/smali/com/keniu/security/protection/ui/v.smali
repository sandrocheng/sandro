.class final Lcom/keniu/security/protection/ui/v;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/keniu/security/protection/ui/v;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/keniu/security/protection/ui/v;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->showDialog(I)V

    .line 79
    const/4 v0, 0x0

    return v0
.end method
