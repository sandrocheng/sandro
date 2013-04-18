.class public final Lcom/ijinshan/kinghelper/firewall/do;
.super Landroid/widget/BaseAdapter;
.source "ServiceSmsGroupActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 250
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/do;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 249
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->b:Landroid/content/Context;

    .line 259
    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    .line 251
    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/do;->b:Landroid/content/Context;

    .line 252
    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    .line 254
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    goto :goto_0

    .line 271
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 280
    iget-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 282
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()I
    .locals 3

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 288
    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return v0
.end method

.method public final e()Ljava/util/List;
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 296
    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    if-eqz v2, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_1
    return-object v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 309
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    iget-boolean v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 306
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 334
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 345
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    .line 346
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/do;->b:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 347
    const v2, 0x7f0300e9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 348
    const v1, 0x7f080284

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 349
    const v2, 0x7f080285

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 350
    const v3, 0x7f080286

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 351
    const v4, 0x7f080287

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 352
    const v5, 0x7f080282

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 354
    iget-object v7, p0, Lcom/ijinshan/kinghelper/firewall/do;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-static {v7}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->d(Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 355
    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 356
    iget-boolean v7, v0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 362
    :goto_0
    new-instance v7, Lcom/ijinshan/kinghelper/firewall/dp;

    invoke-direct {v7, p0}, Lcom/ijinshan/kinghelper/firewall/dp;-><init>(Lcom/ijinshan/kinghelper/firewall/do;)V

    .line 363
    iput-object v5, v7, Lcom/ijinshan/kinghelper/firewall/dp;->a:Landroid/widget/CheckBox;

    .line 364
    iput p1, v7, Lcom/ijinshan/kinghelper/firewall/dp;->b:I

    .line 365
    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 366
    invoke-virtual {v5, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/ijinshan/kinghelper/firewall/ej;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    iget-object v1, v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->b()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v5, Ljava/sql/Date;

    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/ej;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;

    iget-wide v7, v1, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity$SMSContent;->a:J

    invoke-direct {v5, v7, v8}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 378
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/ej;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    :goto_1
    return-object v6

    .line 359
    :cond_0
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->b:Landroid/content/Context;

    const v1, 0x7f0b01d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/dp;

    .line 317
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/do;->c:Ljava/util/List;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/dp;->b:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/ej;

    iput-boolean p2, v0, Lcom/ijinshan/kinghelper/firewall/ej;->c:Z

    .line 319
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/do;->a:Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ServiceSmsGroupActivity;->a()V

    .line 320
    return-void
.end method
