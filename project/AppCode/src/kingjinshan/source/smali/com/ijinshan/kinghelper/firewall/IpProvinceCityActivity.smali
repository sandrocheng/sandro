.class public Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;
.super Landroid/app/Activity;
.source "IpProvinceCityActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/ijinshan/kinghelper/firewall/db;

.field private c:Lcom/ijinshan/kinghelper/firewall/db;

.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5317\u4eac"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e0a\u6d77"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5929\u6d25"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u91cd\u5e86"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6d77\u5357"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5c71\u897f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5185\u8499\u53e4"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u8fbd\u5b81"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5409\u6797"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u9ed1\u9f99\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u6c5f\u82cf"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u6d59\u6c5f"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5b89\u5fbd"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u798f\u5efa"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u6c5f\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5c71\u4e1c"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6cb3\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u6e56\u5317"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u6e56\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u5e7f\u4e1c"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5e7f\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u6cb3\u5317"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u56db\u5ddd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u8d35\u5dde"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u4e91\u5357"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u897f\u85cf"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u9655\u897f"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u7518\u8083"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5b81\u590f"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u9752\u6d77"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u65b0\u7586"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->e:[Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->f:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;Lcom/ijinshan/kinghelper/firewall/db;)Lcom/ijinshan/kinghelper/firewall/db;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->c:Lcom/ijinshan/kinghelper/firewall/db;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->f:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Lcom/ijinshan/kinghelper/firewall/db;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->b:Lcom/ijinshan/kinghelper/firewall/db;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->f:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)Lcom/ijinshan/kinghelper/firewall/db;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->c:Lcom/ijinshan/kinghelper/firewall/db;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->requestWindowFeature(I)Z

    .line 32
    const v0, 0x7f03004e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0b009e

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f080164

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a:Landroid/widget/ListView;

    .line 37
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/db;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->e:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/ijinshan/kinghelper/firewall/db;-><init>(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->b:Lcom/ijinshan/kinghelper/firewall/db;

    .line 39
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->b:Lcom/ijinshan/kinghelper/firewall/db;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/da;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/da;-><init>(Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 68
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 70
    :cond_0
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/IpProvinceCityActivity;->finish()V

    .line 75
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
