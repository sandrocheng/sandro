.class Lcom/avast/android/mobilesecurity/app/home/a;
.super Landroid/widget/BaseAdapter;
.source "DashboardAdapter.java"


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->b:Landroid/content/Context;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 102
    const-class v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    const-class v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerScanFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-class v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01ea

    const v4, 0x7f020118

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 109
    const-class v1, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorGroupsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-class v1, Lcom/avast/android/mobilesecurity/app/advisor/AdvisorAppsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01eb

    const v4, 0x7f02010f

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 115
    const-class v1, Lcom/avast/android/mobilesecurity/app/manager/ManagerAppFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const-class v1, Lcom/avast/android/mobilesecurity/app/manager/AppDetailFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01ed

    const v4, 0x7f0200fa

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 121
    const-class v1, Lcom/avast/android/mobilesecurity/app/shieldcontrol/ShieldControlFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01f1

    const v4, 0x7f020114

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/u;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 127
    const-class v1, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-class v1, Lcom/avast/android/mobilesecurity/app/filter/FilterGroupDetailFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    const-class v1, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-class v1, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01ef

    const v4, 0x7f02010b

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 136
    const-class v1, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-class v1, Lcom/avast/android/mobilesecurity/app/firewall/FirewallSettingsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-class v1, Lcom/avast/android/mobilesecurity/app/firewall/FirewallLogsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-class v1, Lcom/avast/android/mobilesecurity/app/firewall/CustomRulesFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-class v1, Lcom/avast/android/mobilesecurity/app/firewall/CustomRuleDetailFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01f0

    const v4, 0x7f02010c

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 148
    const-class v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficinfoFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01f2

    const v4, 0x7f020117

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c0258

    const v4, 0x7f0200f8

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 160
    const-class v1, Lcom/avast/android/mobilesecurity/app/settings/SettingsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/home/b;

    const v3, 0x7f0c01f4

    const v4, 0x7f020111

    invoke-direct {v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/home/b;-><init>(IILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/home/b;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/home/b;->a(Lcom/avast/android/mobilesecurity/app/home/b;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/home/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 186
    :cond_0
    const v0, 0x7f070059

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/home/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/home/b;->b(Lcom/avast/android/mobilesecurity/app/home/b;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    const v0, 0x7f070140

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/home/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/home/b;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/home/b;->a(Lcom/avast/android/mobilesecurity/app/home/b;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-object p2
.end method
