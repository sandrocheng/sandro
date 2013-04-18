.class final Lcom/keniu/security/traffic/by;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/bw;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/bw;)V
    .locals 0
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/keniu/security/traffic/by;->a:Lcom/keniu/security/traffic/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 635
    iget-object v0, p0, Lcom/keniu/security/traffic/by;->a:Lcom/keniu/security/traffic/bw;

    iget-object v0, v0, Lcom/keniu/security/traffic/bw;->a:Lcom/keniu/security/util/CustomCheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/CustomCheckBoxPreference;->a(Z)V

    .line 637
    return-void
.end method
