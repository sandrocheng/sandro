.class public final enum Lcom/ijinshan/kinghelper/firewall/de;
.super Ljava/lang/Enum;
.source "PrefManager.java"


# static fields
.field public static final enum a:Lcom/ijinshan/kinghelper/firewall/de;

.field public static final enum b:Lcom/ijinshan/kinghelper/firewall/de;

.field public static final enum c:Lcom/ijinshan/kinghelper/firewall/de;

.field public static final enum d:Lcom/ijinshan/kinghelper/firewall/de;

.field private static final synthetic g:[Lcom/ijinshan/kinghelper/firewall/de;


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 556
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/de;

    const-string v1, "EndCall"

    const v2, 0x7f0b0043

    const v3, 0x7f0b004c

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ijinshan/kinghelper/firewall/de;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/de;->a:Lcom/ijinshan/kinghelper/firewall/de;

    .line 558
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/de;

    const-string v1, "NoService"

    const v2, 0x7f0b0044

    const v3, 0x7f0b004d

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/ijinshan/kinghelper/firewall/de;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/de;->b:Lcom/ijinshan/kinghelper/firewall/de;

    .line 560
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/de;

    const-string v1, "PowerOff"

    const v2, 0x7f0b0045

    const v3, 0x7f0b004e

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/ijinshan/kinghelper/firewall/de;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/de;->c:Lcom/ijinshan/kinghelper/firewall/de;

    .line 562
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/de;

    const-string v1, "Arrears"

    const v2, 0x7f0b0046

    const v3, 0x7f0b004f

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/ijinshan/kinghelper/firewall/de;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/de;->d:Lcom/ijinshan/kinghelper/firewall/de;

    .line 555
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ijinshan/kinghelper/firewall/de;

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->a:Lcom/ijinshan/kinghelper/firewall/de;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->b:Lcom/ijinshan/kinghelper/firewall/de;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->c:Lcom/ijinshan/kinghelper/firewall/de;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/de;->d:Lcom/ijinshan/kinghelper/firewall/de;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/de;->g:[Lcom/ijinshan/kinghelper/firewall/de;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 566
    iput p3, p0, Lcom/ijinshan/kinghelper/firewall/de;->e:I

    .line 567
    iput p4, p0, Lcom/ijinshan/kinghelper/firewall/de;->f:I

    .line 568
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/de;
    .locals 6
    .parameter

    .prologue
    .line 574
    if-nez p0, :cond_0

    .line 575
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->D()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    .line 579
    :goto_0
    return-object v0

    .line 576
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/de;->values()[Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 577
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Lcom/ijinshan/kinghelper/firewall/de;->e:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 578
    goto :goto_0

    .line 576
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 579
    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->D()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/de;
    .locals 6
    .parameter

    .prologue
    .line 583
    if-nez p0, :cond_0

    .line 584
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->D()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    .line 588
    :goto_0
    return-object v0

    .line 585
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/de;->values()[Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 586
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Lcom/ijinshan/kinghelper/firewall/de;->f:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 587
    goto :goto_0

    .line 585
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->D()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 592
    if-nez p0, :cond_0

    .line 593
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->D()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/de;->b()Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_0
    return-object v0

    .line 594
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/de;->values()[Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 595
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Lcom/ijinshan/kinghelper/firewall/de;->e:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 596
    invoke-virtual {v3}, Lcom/ijinshan/kinghelper/firewall/de;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 594
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 597
    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->D()Lcom/ijinshan/kinghelper/firewall/de;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/de;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/de;
    .locals 1
    .parameter

    .prologue
    .line 555
    const-class v0, Lcom/ijinshan/kinghelper/firewall/de;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/de;

    return-object p0
.end method

.method public static values()[Lcom/ijinshan/kinghelper/firewall/de;
    .locals 1

    .prologue
    .line 555
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/de;->g:[Lcom/ijinshan/kinghelper/firewall/de;

    invoke-virtual {v0}, [Lcom/ijinshan/kinghelper/firewall/de;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ijinshan/kinghelper/firewall/de;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/de;->e:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->A()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/ijinshan/kinghelper/firewall/de;->f:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
