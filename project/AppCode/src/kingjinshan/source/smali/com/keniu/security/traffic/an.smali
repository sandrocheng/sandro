.class final Lcom/keniu/security/traffic/an;
.super Ljava/lang/Object;
.source "TrafficFireWallMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/keniu/security/a;

.field final synthetic c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/widget/CheckBox;Lcom/keniu/security/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/keniu/security/traffic/an;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iput-object p2, p0, Lcom/keniu/security/traffic/an;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/keniu/security/traffic/an;->b:Lcom/keniu/security/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 541
    iget-object v0, p0, Lcom/keniu/security/traffic/an;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/keniu/security/traffic/an;->b:Lcom/keniu/security/a;

    invoke-virtual {v0}, Lcom/keniu/security/a;->D()V

    .line 543
    :cond_0
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    .line 544
    iget-object v0, p0, Lcom/keniu/security/traffic/an;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v0, v0, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->b:Lcom/keniu/security/monitor/a;

    sget v1, Lcom/keniu/security/monitor/a;->x:I

    iget-object v2, p0, Lcom/keniu/security/traffic/an;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    const v3, 0x3fffffff

    invoke-virtual {v0, v1, v2, v3}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 548
    return-void
.end method
