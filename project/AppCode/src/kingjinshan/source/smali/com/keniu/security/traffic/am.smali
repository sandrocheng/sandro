.class final Lcom/keniu/security/traffic/am;
.super Landroid/widget/ArrayAdapter;
.source "TrafficFireWallMainActivity.java"


# instance fields
.field final synthetic a:Landroid/view/LayoutInflater;

.field final synthetic b:Ljava/text/DecimalFormat;

.field final synthetic c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;Landroid/content/Context;[Lcom/keniu/security/traffic/f;Landroid/view/LayoutInflater;Ljava/text/DecimalFormat;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iput-object p4, p0, Lcom/keniu/security/traffic/am;->a:Landroid/view/LayoutInflater;

    iput-object p5, p0, Lcom/keniu/security/traffic/am;->b:Ljava/text/DecimalFormat;

    const v0, 0x7f0300b1

    const v1, 0x7f080298

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 411
    if-nez p2, :cond_1

    .line 416
    iget-object v0, p0, Lcom/keniu/security/traffic/am;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b1

    invoke-virtual {v0, v1, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 419
    const-string v0, "DroidWall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> inflate("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v2, Lcom/keniu/security/traffic/ap;

    invoke-direct {v2}, Lcom/keniu/security/traffic/ap;-><init>()V

    .line 421
    const v0, 0x7f08029a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v2, v0}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 423
    const v0, 0x7f080297

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v2, v0}, Lcom/keniu/security/traffic/ap;->b(Lcom/keniu/security/traffic/ap;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 425
    const v0, 0x7f080298

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 427
    const v0, 0x7f080299

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/keniu/security/traffic/ap;->b(Lcom/keniu/security/traffic/ap;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 429
    const v0, 0x7f080296

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 431
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 439
    :goto_0
    iget-object v2, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    iget-object v2, v2, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->a:[Lcom/keniu/security/traffic/f;

    aget-object v2, v2, p1

    .line 440
    iget-object v3, v2, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 441
    invoke-static {v0, v2}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;Lcom/keniu/security/traffic/f;)Lcom/keniu/security/traffic/f;

    .line 442
    iget-object v3, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->e(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    iget-object v3, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->f(Lcom/keniu/security/traffic/TrafficFireWallMainActivity;)I

    move-result v3

    iget v4, v2, Lcom/keniu/security/traffic/f;->a:I

    if-ne v3, v4, :cond_2

    .line 444
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0xf5

    const/16 v6, 0xb8

    invoke-static {v4, v5, v6, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 450
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/keniu/security/traffic/f;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->b(Lcom/keniu/security/traffic/ap;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    const v5, 0x7f0b0292

    invoke-virtual {v4, v5}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/keniu/security/traffic/am;->b:Ljava/text/DecimalFormat;

    iget-wide v7, v2, Lcom/keniu/security/traffic/f;->m:D

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->c(Lcom/keniu/security/traffic/ap;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, v2, Lcom/keniu/security/traffic/f;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->d(Lcom/keniu/security/traffic/ap;)Landroid/widget/CheckBox;

    move-result-object v3

    .line 464
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 465
    iget-boolean v4, v2, Lcom/keniu/security/traffic/f;->d:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 466
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 468
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->e(Lcom/keniu/security/traffic/ap;)Landroid/widget/CheckBox;

    move-result-object v3

    .line 469
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 470
    iget-boolean v2, v2, Lcom/keniu/security/traffic/f;->c:Z

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 471
    invoke-virtual {v3, v10}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 473
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->e(Lcom/keniu/security/traffic/ap;)Landroid/widget/CheckBox;

    move-result-object v2

    iget-object v3, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 475
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->d(Lcom/keniu/security/traffic/ap;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    return-object v1

    .line 433
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/ap;

    move-object v1, p2

    goto/16 :goto_0

    .line 446
    :cond_2
    invoke-static {v0}, Lcom/keniu/security/traffic/ap;->a(Lcom/keniu/security/traffic/ap;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/keniu/security/traffic/am;->c:Lcom/keniu/security/traffic/TrafficFireWallMainActivity;

    invoke-virtual {v4}, Lcom/keniu/security/traffic/TrafficFireWallMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1
.end method
