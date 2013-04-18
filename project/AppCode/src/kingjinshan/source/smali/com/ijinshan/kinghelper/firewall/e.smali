.class final Lcom/ijinshan/kinghelper/firewall/e;
.super Ljava/lang/Object;
.source "FireWallSettingS2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kpref/CheckBoxPreference;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;Lcom/ijinshan/kpref/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/e;->b:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/e;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/e;->b:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/e;->a:Lcom/ijinshan/kpref/CheckBoxPreference;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->a(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;Lcom/ijinshan/kpref/CheckBoxPreference;)V

    .line 73
    return-void
.end method
