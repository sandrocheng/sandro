.class final Lcom/keniu/security/main/ck;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/Preference;

.field final synthetic b:Lcom/keniu/security/main/ci;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/ci;Lcom/ijinshan/kpref/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/keniu/security/main/ck;->b:Lcom/keniu/security/main/ci;

    iput-object p2, p0, Lcom/keniu/security/main/ck;->a:Lcom/ijinshan/kpref/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object p0, p0, Lcom/keniu/security/main/ck;->a:Lcom/ijinshan/kpref/Preference;

    check-cast p0, Lcom/ijinshan/kpref/CheckBoxPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kpref/CheckBoxPreference;->a(Z)V

    .line 116
    return-void
.end method
