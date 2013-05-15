.class public Landroid/support/v4/view/am;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/at;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 324
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 325
    new-instance v0, Landroid/support/v4/view/as;

    invoke-direct {v0}, Landroid/support/v4/view/as;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    .line 337
    :goto_0
    return-void

    .line 326
    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 327
    new-instance v0, Landroid/support/v4/view/ar;

    invoke-direct {v0}, Landroid/support/v4/view/ar;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    goto :goto_0

    .line 328
    :cond_1
    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 329
    new-instance v0, Landroid/support/v4/view/aq;

    invoke-direct {v0}, Landroid/support/v4/view/aq;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    goto :goto_0

    .line 330
    :cond_2
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 331
    new-instance v0, Landroid/support/v4/view/ap;

    invoke-direct {v0}, Landroid/support/v4/view/ap;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    goto :goto_0

    .line 332
    :cond_3
    const/16 v1, 0x9

    if-lt v0, v1, :cond_4

    .line 333
    new-instance v0, Landroid/support/v4/view/ao;

    invoke-direct {v0}, Landroid/support/v4/view/ao;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    goto :goto_0

    .line 335
    :cond_4
    new-instance v0, Landroid/support/v4/view/an;

    invoke-direct {v0}, Landroid/support/v4/view/an;-><init>()V

    sput-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 371
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 713
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/at;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 714
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 508
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Landroid/support/v4/view/a;)V

    .line 509
    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 576
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public static a(Landroid/view/View;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 347
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 544
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->b(Landroid/view/View;)V

    .line 545
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 625
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/at;->b(Landroid/view/View;I)V

    .line 626
    return-void
.end method

.method public static c(Landroid/view/View;)I
    .locals 1
    .parameter

    .prologue
    .line 609
    sget-object v0, Landroid/support/v4/view/am;->a:Landroid/support/v4/view/at;

    invoke-interface {v0, p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)I

    move-result v0

    return v0
.end method
