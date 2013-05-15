.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "TrafficInfoSettingsFragment.java"


# static fields
.field public static a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;


# instance fields
.field private b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

.field private c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

.field private d:Lcom/avast/android/mobilesecurity/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/o;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/o;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->a:Lcom/avast/android/mobilesecurity/app/firewall/core/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    return-object v0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/t;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->d:Lcom/avast/android/mobilesecurity/t;

    return-object v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    const v0, 0x7f070182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    .line 102
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 106
    const v0, 0x7f070183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    .line 107
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aL()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(I)V

    .line 110
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(Lcom/avast/android/mobilesecurity/ui/widget/l;)V

    .line 150
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->a(Lcom/avast/android/generic/ui/widget/c;)V

    .line 242
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "/ms/networkMeter/settings"

    return-object v0
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 49
    const v0, 0x7f0c0376

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    const v0, 0x7f03006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v1, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    iput-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->d:Lcom/avast/android/mobilesecurity/t;

    .line 79
    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 59
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onResume()V

    .line 61
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->aK()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b:Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 68
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->d:Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->aL()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(I)V

    .line 69
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c:Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->setEnabled(Z)V

    goto :goto_0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c(Landroid/view/View;)V

    .line 87
    return-void
.end method
