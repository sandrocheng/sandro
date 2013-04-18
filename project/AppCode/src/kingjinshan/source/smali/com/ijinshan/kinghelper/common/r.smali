.class final Lcom/ijinshan/kinghelper/common/r;
.super Landroid/widget/CursorAdapter;
.source "PickListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/ijinshan/kinghelper/firewall/core/r;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    .line 1227
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1228
    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/core/r;->a(Landroid/content/Context;)Lcom/ijinshan/kinghelper/firewall/core/r;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/r;->d:Lcom/ijinshan/kinghelper/firewall/core/r;

    .line 1229
    return-void
.end method

.method public constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1233
    invoke-direct {p0, p1, p2, p4}, Lcom/ijinshan/kinghelper/common/r;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1234
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/r;->c:Landroid/view/LayoutInflater;

    .line 1236
    iput-object p3, p0, Lcom/ijinshan/kinghelper/common/r;->b:Ljava/lang/String;

    .line 1237
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {p1, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 1238
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1395
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/r;->notifyDataSetChanged()V

    .line 1396
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/r;->notifyDataSetInvalidated()V

    .line 1397
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 1401
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 1403
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1405
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1406
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1407
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1410
    :cond_1
    return-object v2
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/ijinshan/kinghelper/common/u;

    move-object v7, v0

    .line 1244
    const-string v1, "vnd.android.cursor.dir/calls"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1245
    const-string v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    .line 1248
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1251
    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    .line 1258
    :goto_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->g:Ljava/lang/String;

    .line 1259
    invoke-static {}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c()Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->i:Ljava/lang/String;

    .line 1323
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    .line 1324
    const-string v1, "vnd.android.cursor.dir/contact"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1325
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1326
    iget-object v2, v7, Lcom/ijinshan/kinghelper/common/u;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1327
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->d:Lcom/ijinshan/kinghelper/firewall/core/r;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    new-instance v4, Lcom/ijinshan/kinghelper/common/s;

    invoke-direct {v4, p0}, Lcom/ijinshan/kinghelper/common/s;-><init>(Lcom/ijinshan/kinghelper/common/r;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/r;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/core/u;)Ljava/lang/String;

    move-result-object v1

    .line 1341
    if-eqz v1, :cond_7

    .line 1342
    iget-object v2, v7, Lcom/ijinshan/kinghelper/common/u;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1343
    iput-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->h:Ljava/lang/String;

    .line 1350
    :goto_2
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1351
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1352
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1354
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, v7, Lcom/ijinshan/kinghelper/common/u;->j:I

    .line 1355
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v1, v7}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setTag(Ljava/lang/Object;)V

    .line 1356
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    .line 1358
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v1, p0}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1359
    return-void

    .line 1256
    :cond_1
    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    goto/16 :goto_0

    .line 1261
    :cond_2
    const-string v1, "vnd.android.cursor.dir/sms"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1263
    const-string v1, "body"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->g:Ljava/lang/String;

    .line 1266
    const-string v1, "date"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1270
    const-string v1, "address"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    .line 1273
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->f(Lcom/ijinshan/kinghelper/common/PickListActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-boolean v1, Lcom/jxphone/mosecurity/d/l;->c:Z

    if-nez v1, :cond_a

    .line 1274
    const-string v1, "_id"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1276
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 1277
    new-instance v4, Ljava/lang/String;

    const-string v1, "msg_id=? and type=137"

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1278
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://mms/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/addr"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    move-object v6, v3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1281
    if-eqz v1, :cond_a

    .line 1282
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1283
    const-string v2, "address"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    .line 1285
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v8

    .line 1286
    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    const v5, 0x7f0b020d

    invoke-virtual {v4, v5}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ijinshan/kinghelper/common/r;->g:Ljava/lang/String;

    .line 1288
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v1, v2

    .line 1294
    :goto_4
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1297
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1298
    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    iput-object v3, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    .line 1302
    :goto_5
    invoke-static {v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 1300
    :cond_3
    iput-object v3, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    goto :goto_5

    .line 1305
    :cond_4
    const-string v1, "vnd.android.cursor.dir/contact"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/r;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1306
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_5

    const-string v1, "data1"

    .line 1308
    :goto_6
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v2, "display_name"

    .line 1310
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    .line 1311
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1313
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1314
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    .line 1319
    :goto_7
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->g:Ljava/lang/String;

    .line 1320
    const-string v1, ""

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->i:Ljava/lang/String;

    goto/16 :goto_1

    .line 1306
    :cond_5
    const-string v1, "number"

    goto :goto_6

    .line 1316
    :cond_6
    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->f:Ljava/lang/String;

    goto :goto_7

    .line 1345
    :cond_7
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->d:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1348
    :cond_8
    iget-object v1, v7, Lcom/ijinshan/kinghelper/common/u;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_9
    move-wide v2, v8

    goto :goto_3

    :cond_a
    move-wide v1, v8

    goto :goto_4
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/r;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1364
    new-instance v2, Lcom/ijinshan/kinghelper/common/u;

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v2, v0}, Lcom/ijinshan/kinghelper/common/u;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    .line 1365
    const v0, 0x7f08028a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    iput-object v0, v2, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    .line 1367
    const v0, 0x7f08028b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/ijinshan/kinghelper/common/u;->b:Landroid/widget/TextView;

    .line 1369
    const v0, 0x7f08028c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/ijinshan/kinghelper/common/u;->c:Landroid/widget/TextView;

    .line 1371
    const v0, 0x7f08028e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/ijinshan/kinghelper/common/u;->d:Landroid/widget/TextView;

    .line 1373
    const v0, 0x7f08028d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/ijinshan/kinghelper/common/u;->e:Landroid/widget/TextView;

    .line 1375
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1376
    const-string v0, "PickListActivity1_ec_action"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->e(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    iget-object v0, v2, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setVisibility(I)V

    .line 1379
    :cond_0
    return-object v1
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1385
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/u;

    .line 1386
    if-eqz p2, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v0, v0, Lcom/ijinshan/kinghelper/common/u;->j:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1391
    :goto_0
    return-void

    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/r;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v0, v0, Lcom/ijinshan/kinghelper/common/u;->j:I

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method
