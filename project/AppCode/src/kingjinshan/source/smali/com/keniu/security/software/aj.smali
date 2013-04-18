.class final Lcom/keniu/security/software/aj;
.super Landroid/widget/BaseAdapter;
.source "SoftwareManager2.java"


# instance fields
.field public a:Ljava/util/ArrayList;

.field b:Lcom/ijinshan/kinghelper/a/f;

.field final synthetic c:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method public constructor <init>(Lcom/keniu/security/software/SoftwareManager2;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1012
    iput-object p1, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1013
    iput-object p2, p0, Lcom/keniu/security/software/aj;->a:Ljava/util/ArrayList;

    .line 1014
    invoke-virtual {p1}, Lcom/keniu/security/software/SoftwareManager2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/f;->a(Landroid/content/Context;)Lcom/ijinshan/kinghelper/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/software/aj;->b:Lcom/ijinshan/kinghelper/a/f;

    .line 1015
    return-void
.end method

.method private b(I)Lcom/keniu/security/software/o;
    .locals 1
    .parameter

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/keniu/security/software/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/software/o;

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/keniu/security/software/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v0, p0, Lcom/keniu/security/software/aj;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 1030
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->y(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 1032
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->p(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appSysCate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1034
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->z(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 1035
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->v(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    goto :goto_0

    .line 1036
    :cond_2
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appInnerSysCate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->A(Lcom/keniu/security/software/SoftwareManager2;)I

    .line 1038
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->t(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/software/aj;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/keniu/security/software/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/keniu/security/software/aj;->b(I)Lcom/keniu/security/software/o;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 1044
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f03003e

    const-wide/16 v7, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1050
    if-nez p1, :cond_3

    .line 1052
    invoke-direct {p0, v9}, Lcom/keniu/security/software/aj;->b(I)Lcom/keniu/security/software/o;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v2

    .line 1055
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->B(Lcom/keniu/security/software/SoftwareManager2;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 1057
    const v0, 0x7f080134

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1059
    const v1, 0x7f080135

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    const v1, 0x7f080136

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 1063
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1065
    new-instance v4, Lcom/keniu/security/software/ak;

    invoke-direct {v4, p0, v2}, Lcom/keniu/security/software/ak;-><init>(Lcom/keniu/security/software/aj;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1193
    const-string v1, "appCate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1195
    iget-object v1, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const v2, 0x7f0b055b

    invoke-virtual {v1, v2}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v4}, Lcom/keniu/security/software/SoftwareManager2;->q(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    move-object v0, v3

    .line 1295
    :goto_1
    return-object v0

    .line 1199
    :cond_1
    const-string v1, "appInnerSysCate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1201
    iget-object v1, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const v2, 0x7f0b055c

    invoke-virtual {v1, v2}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v4}, Lcom/keniu/security/software/SoftwareManager2;->u(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1205
    :cond_2
    const-string v1, "appSysCate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const v2, 0x7f0b055d

    invoke-virtual {v1, v2}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v4}, Lcom/keniu/security/software/SoftwareManager2;->w(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1216
    :cond_3
    if-nez p2, :cond_5

    .line 1219
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0}, Lcom/keniu/security/software/SoftwareManager2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1221
    new-instance v2, Lcom/keniu/security/software/aq;

    invoke-direct {v2, p0}, Lcom/keniu/security/software/aq;-><init>(Lcom/keniu/security/software/aj;)V

    .line 1222
    const v0, 0x7f080131

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/keniu/security/software/aq;->a:Landroid/widget/ImageView;

    .line 1223
    const v0, 0x7f080086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/software/aq;->b:Landroid/widget/TextView;

    .line 1224
    const v0, 0x7f080132

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/software/aq;->c:Landroid/widget/TextView;

    .line 1226
    const v0, 0x7f080133

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/software/aq;->d:Landroid/widget/TextView;

    .line 1228
    const v0, 0x7f080130

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v2, Lcom/keniu/security/software/aq;->e:Landroid/widget/Button;

    .line 1230
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    .line 1253
    :goto_2
    iget-object v2, v0, Lcom/keniu/security/software/aq;->e:Landroid/widget/Button;

    new-instance v3, Lcom/keniu/security/software/ap;

    invoke-direct {v3, p0, p1}, Lcom/keniu/security/software/ap;-><init>(Lcom/keniu/security/software/aj;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    invoke-direct {p0, p1}, Lcom/keniu/security/software/aj;->b(I)Lcom/keniu/security/software/o;

    move-result-object v2

    .line 1265
    iget-object v3, p0, Lcom/keniu/security/software/aj;->b:Lcom/ijinshan/kinghelper/a/f;

    invoke-virtual {v2}, Lcom/keniu/security/software/o;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/keniu/security/software/aq;->a:Landroid/widget/ImageView;

    new-instance v6, Lcom/keniu/security/software/q;

    invoke-direct {v6}, Lcom/keniu/security/software/q;-><init>()V

    invoke-virtual {v3, v4, v5, v6}, Lcom/ijinshan/kinghelper/a/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/ijinshan/kinghelper/a/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1267
    if-eqz v3, :cond_4

    .line 1268
    iget-object v4, v0, Lcom/keniu/security/software/aq;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1271
    :cond_4
    iget-object v3, v0, Lcom/keniu/security/software/aq;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1272
    invoke-virtual {v2}, Lcom/keniu/security/software/o;->c()J

    move-result-wide v3

    .line 1274
    const-wide/32 v5, 0x100000

    cmp-long v5, v3, v5

    if-lez v5, :cond_6

    .line 1278
    long-to-double v3, v3

    add-double/2addr v3, v7

    const-wide/high16 v5, 0x4130

    div-double/2addr v3, v5

    .line 1279
    const-string v5, "MB"

    .line 1284
    :goto_3
    iget-object v6, v0, Lcom/keniu/security/software/aq;->c:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    const v8, 0x7f0b0581

    invoke-virtual {v7, v8}, Lcom/keniu/security/software/SoftwareManager2;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v8, v9

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    invoke-direct {p0, v9}, Lcom/keniu/security/software/aj;->b(I)Lcom/keniu/security/software/o;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keniu/security/software/o;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appCate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1289
    iget-object v0, v0, Lcom/keniu/security/software/aq;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/keniu/security/software/o;->d()I

    move-result v2

    if-nez v2, :cond_7

    const v2, 0x7f0b0567

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_5
    move-object v0, v1

    .line 1295
    goto/16 :goto_1

    .line 1233
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/aq;

    .line 1234
    if-nez v0, :cond_9

    .line 1236
    iget-object v0, p0, Lcom/keniu/security/software/aj;->c:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0}, Lcom/keniu/security/software/SoftwareManager2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v1, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1238
    new-instance v1, Lcom/keniu/security/software/aq;

    invoke-direct {v1, p0}, Lcom/keniu/security/software/aq;-><init>(Lcom/keniu/security/software/aj;)V

    .line 1239
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v0

    .line 1241
    :goto_6
    const v0, 0x7f080130

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/keniu/security/software/aq;->e:Landroid/widget/Button;

    .line 1243
    const v0, 0x7f080133

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/keniu/security/software/aq;->d:Landroid/widget/TextView;

    .line 1246
    const v0, 0x7f080131

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/keniu/security/software/aq;->a:Landroid/widget/ImageView;

    .line 1247
    const v0, 0x7f080086

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/keniu/security/software/aq;->b:Landroid/widget/TextView;

    .line 1248
    const v0, 0x7f080132

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/keniu/security/software/aq;->c:Landroid/widget/TextView;

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    .line 1281
    :cond_6
    long-to-double v3, v3

    add-double/2addr v3, v7

    const-wide/high16 v5, 0x4090

    div-double/2addr v3, v5

    .line 1282
    const-string v5, "KB"

    goto/16 :goto_3

    .line 1289
    :cond_7
    const v2, 0x7f0b0566

    goto :goto_4

    .line 1293
    :cond_8
    iget-object v0, v0, Lcom/keniu/security/software/aq;->d:Landroid/widget/TextView;

    const v2, 0x7f0b04ec

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_9
    move-object v1, v0

    move-object v2, p2

    goto :goto_6
.end method
