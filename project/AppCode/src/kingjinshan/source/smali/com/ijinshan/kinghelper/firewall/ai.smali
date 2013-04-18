.class final Lcom/ijinshan/kinghelper/firewall/ai;
.super Ljava/lang/Object;
.source "FirewallSettingTimeLanjie.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ai;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;

    iput-boolean p2, p0, Lcom/ijinshan/kinghelper/firewall/ai;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    mul-int/lit8 v0, p2, 0x3c

    add-int/2addr v0, p3

    .line 108
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ai;->b:Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;

    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/ai;->a:Z

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;->a(Lcom/ijinshan/kinghelper/firewall/FirewallSettingTimeLanjie;ZI)V

    .line 109
    return-void
.end method
