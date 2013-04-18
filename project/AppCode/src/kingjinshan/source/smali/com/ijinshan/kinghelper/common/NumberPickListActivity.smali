.class public Lcom/ijinshan/kinghelper/common/NumberPickListActivity;
.super Landroid/app/ListActivity;
.source "NumberPickListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field protected static final a:Ljava/lang/String; = "NumberPickListActivity"

.field public static final b:Ljava/lang/String; = "vnd.android.cursor.dir/contact"

.field public static final c:Ljava/lang/String; = "vnd.android.cursor.dir/sms"

.field private static final d:I = 0x1

.field private static final e:Ljava/text/SimpleDateFormat;


# instance fields
.field private f:Landroid/util/SparseBooleanArray;

.field private g:Landroid/widget/ProgressBar;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/Button;

.field private l:Ljava/lang/String;

.field private m:Lcom/ijinshan/kinghelper/common/e;

.field private n:I

.field private o:I

.field private p:Lcom/ijinshan/kinghelper/common/f;

.field private q:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->e:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 506
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->f:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->f:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->q:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->e:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Lcom/ijinshan/kinghelper/common/e;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    .line 146
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    const-string v3, "date DESC"

    move-object v6, v2

    move-object v5, v2

    move-object v7, v3

    move-object v3, v0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->p:Lcom/ijinshan/kinghelper/common/f;

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/ijinshan/kinghelper/common/f;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 151
    :cond_0
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    sget-object v0, Landroid/a/w;->a:Landroid/net/Uri;

    .line 153
    const-string v3, "date DESC"

    .line 154
    const-string v4, "address !=? "

    .line 155
    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "\'wappush_message\'"

    aput-object v7, v5, v6

    move-object v6, v5

    move-object v7, v3

    move-object v5, v4

    move-object v3, v0

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 159
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    sget-object v0, Lcom/ijinshan/kinghelper/a/e;->h:Landroid/net/Uri;

    :goto_1
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    move-object v3, v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    move-object v3, v2

    goto :goto_0
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 168
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v1

    .line 169
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->b()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    const-string v6, "vnd.android.cursor.dir/calls"

    iget-object v7, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "vnd.android.cursor.dir/sms"

    iget-object v7, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v0, "address"

    :goto_0
    move-object v6, v0

    :goto_1
    move v7, v8

    :goto_2
    if-ge v7, v5, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_0
    const-string v6, "vnd.android.cursor.dir/contact"

    iget-object v7, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x4

    if-le v0, v6, :cond_1

    const-string v0, "data1"

    goto :goto_0

    :cond_1
    const-string v0, "number"

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 172
    if-gtz v2, :cond_3

    .line 198
    :goto_3
    return-void

    .line 175
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v5, v8

    .line 177
    :goto_4
    if-ge v5, v2, :cond_6

    .line 178
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-static {p0, v6}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 186
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_4
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    .line 188
    :cond_5
    const-string v6, ";"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 189
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 193
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Ljava/lang/String;)Z

    .line 194
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->setResult(I)V

    .line 195
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->a()V

    .line 197
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->finish()V

    goto :goto_3

    :cond_7
    move-object v6, v0

    goto/16 :goto_1
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private e()Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/common/e;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 226
    const/4 v4, 0x0

    .line 228
    const-string v5, "vnd.android.cursor.dir/calls"

    iget-object v6, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 229
    const-string v5, "vnd.android.cursor.dir/sms"

    iget-object v6, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    const-string v4, "address"

    .line 238
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 239
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 240
    invoke-interface {v2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 242
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 243
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 234
    :cond_1
    const-string v5, "vnd.android.cursor.dir/contact"

    iget-object v6, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    const-string v4, "data1"

    goto :goto_0

    :cond_2
    const-string v4, "number"

    goto :goto_0

    .line 245
    :cond_3
    return-object v1
.end method

.method private f()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/e;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    move v0, v2

    .line 268
    :goto_0
    return v0

    .line 264
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v2

    .line 266
    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 287
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const v0, 0x7f0b014a

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->o:I

    .line 299
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->i:Landroid/widget/TextView;

    iget v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 300
    return-void

    .line 291
    :cond_1
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    const v0, 0x7f0b0149

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->o:I

    goto :goto_0

    .line 295
    :cond_2
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const v0, 0x7f0b014b

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->o:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008f

    if-ne v0, v1, :cond_9

    .line 203
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/e;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    move v0, v8

    :goto_0
    if-eqz v0, :cond_8

    .line 204
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->b()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    const-string v6, "vnd.android.cursor.dir/calls"

    iget-object v7, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "vnd.android.cursor.dir/sms"

    iget-object v7, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "address"

    :goto_1
    move-object v6, v0

    :goto_2
    move v7, v8

    :goto_3
    if-ge v7, v5, :cond_4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    .line 203
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    const-string v6, "vnd.android.cursor.dir/contact"

    iget-object v7, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v6, 0x4

    if-le v0, v6, :cond_3

    const-string v0, "data1"

    goto :goto_1

    :cond_3
    const-string v0, "number"

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v5, v8

    :goto_4
    if-ge v5, v2, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0, v6}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_6
    const-string v6, ";"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Ljava/lang/String;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->setResult(I)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/e;->a()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->finish()V

    .line 209
    :cond_8
    :goto_6
    return-void

    .line 206
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080090

    if-ne v0, v1, :cond_8

    .line 207
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->finish()V

    goto :goto_6

    :cond_a
    move-object v6, v0

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->requestWindowFeature(I)Z

    .line 82
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->g:Landroid/widget/ProgressBar;

    .line 86
    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->h:Landroid/view/View;

    .line 87
    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->i:Landroid/widget/TextView;

    .line 88
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 89
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->i:Landroid/widget/TextView;

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->j:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->j:Landroid/widget/Button;

    const v1, 0x7f0b00d5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 97
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->k:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->k:Landroid/widget/Button;

    const v1, 0x7f0b00d6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->k:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    .line 106
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const v0, 0x7f0b0140

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->n:I

    .line 120
    :cond_0
    :goto_0
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    new-instance v0, Lcom/ijinshan/kinghelper/common/e;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1}, Lcom/ijinshan/kinghelper/common/e;-><init>(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    .line 123
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->m:Lcom/ijinshan/kinghelper/common/e;

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    new-instance v0, Lcom/ijinshan/kinghelper/common/f;

    invoke-direct {v0, p0, p0}, Lcom/ijinshan/kinghelper/common/f;-><init>(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->p:Lcom/ijinshan/kinghelper/common/f;

    .line 128
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->q:Landroid/content/Context;

    .line 129
    return-void

    .line 111
    :cond_1
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    const v0, 0x7f0b0141

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->n:I

    goto :goto_0

    .line 115
    :cond_2
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const v0, 0x7f0b0142

    iput v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->n:I

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/g;

    .line 275
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->f:Landroid/util/SparseBooleanArray;

    iget v2, v0, Lcom/ijinshan/kinghelper/common/g;->j:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 277
    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->f:Landroid/util/SparseBooleanArray;

    iget v2, v0, Lcom/ijinshan/kinghelper/common/g;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 280
    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->i:Landroid/widget/TextView;

    const v3, 0x7f0b0148

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 136
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "date DESC"

    move-object v6, v2

    move-object v5, v2

    move-object v7, v3

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->p:Lcom/ijinshan/kinghelper/common/f;

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/ijinshan/kinghelper/common/f;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 136
    :cond_0
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/a/w;->a:Landroid/net/Uri;

    const-string v3, "date DESC"

    const-string v4, "address !=? "

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "\'wappush_message\'"

    aput-object v6, v5, v7

    move-object v6, v5

    move-object v7, v3

    move-object v5, v4

    move-object v3, v0

    goto :goto_0

    :cond_1
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    sget-object v0, Lcom/ijinshan/kinghelper/a/e;->h:Landroid/net/Uri;

    :goto_1
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    move-object v3, v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    move-object v3, v2

    goto :goto_0
.end method
