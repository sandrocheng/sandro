.class final Lcom/ijinshan/kinghelper/firewall/db;
.super Landroid/widget/BaseAdapter;
.source "IpProvinceCityActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

.field private b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/db;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/db;->b:[Ljava/lang/String;

    .line 97
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/db;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/db;->b:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/db;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/db;->a:Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    if-nez p2, :cond_0

    .line 124
    const v1, 0x7f030118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 127
    :goto_0
    const v0, 0x7f0803f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/db;->b:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method
