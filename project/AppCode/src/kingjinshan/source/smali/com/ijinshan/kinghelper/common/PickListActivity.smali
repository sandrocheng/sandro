.class public Lcom/ijinshan/kinghelper/common/PickListActivity;
.super Landroid/app/ListActivity;
.source "PickListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final P:I = 0x0

.field protected static final a:Ljava/lang/String; = "PickListActivity"

.field public static final b:Ljava/lang/String; = "vnd.android.cursor.dir/contact"

.field public static final c:Ljava/lang/String; = "vnd.android.cursor.dir/sms"

.field public static final d:Ljava/lang/String; = "PickListActivity1_action_type"

.field public static final e:Ljava/lang/String; = "PickListActivity1_report_action"

.field public static final f:Ljava/lang/String; = "PickListActivity1_white_action"

.field public static final g:Ljava/lang/String; = "_PickListActivity1_black_action"

.field public static final h:Ljava/lang/String; = "PickListActivity1_onekeycall_action"

.field public static final i:Ljava/lang/String; = "PickListActivity1_ec_action"

.field public static final j:Ljava/lang/String; = "PickListActivity1_ec_conversion_sms"

.field private static final k:I = 0x1

.field private static final l:Ljava/text/SimpleDateFormat; = null

.field private static final m:I = 0x3000

.field private static final n:I = 0x4000

.field private static final o:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Landroid/os/Handler;

.field private F:Landroid/os/HandlerThread;

.field private G:Lcom/ijinshan/kinghelper/common/t;

.field private H:Landroid/widget/ListView;

.field private I:Lcom/ijinshan/kinghelper/common/NumSortView;

.field private J:Landroid/widget/TextView;

.field private K:Ljava/util/HashMap;

.field private L:[Ljava/lang/String;

.field private M:Landroid/os/Handler;

.field private N:Lcom/ijinshan/kinghelper/common/q;

.field private O:Z

.field private Q:Landroid/os/Handler;

.field private R:Ljava/util/Map;

.field private p:Landroid/util/SparseBooleanArray;

.field private q:Landroid/widget/ProgressBar;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/Button;

.field private u:Landroid/widget/Button;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Lcom/ijinshan/kinghelper/common/r;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ijinshan/kinghelper/common/PickListActivity;->l:Ljava/text/SimpleDateFormat;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_user_report_add2black_show_dialog_status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/common/PickListActivity;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 128
    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    .line 129
    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->E:Landroid/os/Handler;

    .line 130
    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->F:Landroid/os/HandlerThread;

    .line 139
    iput-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->O:Z

    .line 271
    new-instance v0, Lcom/ijinshan/kinghelper/common/h;

    invoke-direct {v0, p0}, Lcom/ijinshan/kinghelper/common/h;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->Q:Landroid/os/Handler;

    .line 1203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->R:Ljava/util/Map;

    .line 1595
    return-void
.end method

.method private a(Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    new-instance v1, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 394
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 396
    const v0, 0x7f08011b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 398
    const v3, 0x7f0b0183

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 399
    const v0, 0x7f08011d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 401
    new-instance v3, Lcom/ijinshan/kinghelper/common/i;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/common/i;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 415
    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 416
    const v0, 0x7f0b0182

    invoke-virtual {v1, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 418
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 422
    const v0, 0x7f0b0146

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 426
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 427
    invoke-virtual {v0, p1}, Lcom/keniu/security/util/ap;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 428
    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->p:Landroid/util/SparseBooleanArray;

    return-object p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;)Lcom/ijinshan/kinghelper/common/r;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    return-object v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;Lcom/ijinshan/kinghelper/common/r;)Lcom/ijinshan/kinghelper/common/r;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    return-object p1
.end method

.method private declared-synchronized a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->R:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 1574
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1575
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 1577
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 1581
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v0

    const/16 v2, 0xd

    if-lt v0, v2, :cond_0

    .line 1583
    const-string v0, "\u4e0b\u5348 %02d:%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    const/16 v4, 0xc

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1591
    :goto_0
    return-object v0

    .line 1586
    :cond_0
    const-string v0, "\u4e0a\u5348 %02d:%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1591
    :cond_1
    const-string v0, "%02d/%02d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 611
    const-string v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 614
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    if-eqz v0, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 616
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    new-instance v3, Ljava/lang/String;

    const-string v0, "msg_id=? and type=137"

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/addr"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_1

    .line 622
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 623
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 625
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 629
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v6

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "^[A-Za-z]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "#"

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1181
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1182
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1183
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1184
    if-nez v2, :cond_0

    .line 1185
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1188
    :cond_0
    const-string v0, " or "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1193
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    const/4 v0, 0x0

    .line 690
    const/4 v1, 0x0

    .line 691
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 694
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 697
    const/4 v4, 0x0

    move v5, v0

    move v9, v1

    move v1, v4

    move v4, v9

    :goto_0
    if-ge v1, v3, :cond_1

    .line 698
    const/4 v6, 0x0

    .line 699
    const/4 v7, 0x0

    .line 700
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 705
    const/4 v4, 0x1

    .line 706
    const/4 v7, 0x1

    move v9, v7

    move v7, v4

    move v4, v9

    .line 710
    :goto_1
    const/4 v8, 0x1

    invoke-static {v0, v8}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 712
    const/4 v5, 0x1

    .line 713
    const/4 v6, 0x1

    move v9, v6

    move v6, v5

    move v5, v9

    .line 717
    :goto_2
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 718
    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 720
    invoke-static {p2, v0, v4, p3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(ILjava/lang/String;Ljava/lang/String;I)J

    .line 722
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v4, v7

    move v5, v6

    goto :goto_0

    .line 729
    :cond_1
    const/4 p1, 0x1

    if-ne p2, p1, :cond_6

    .line 730
    const-string p1, "PickListActivity1_report_action"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 731
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 732
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 733
    const p1, 0x7f0b012f

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 773
    :cond_2
    :goto_3
    return-object v2

    .line 736
    :cond_3
    if-eqz v5, :cond_4

    .line 737
    const p1, 0x7f0b012e

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 740
    :cond_4
    if-eqz v4, :cond_2

    .line 741
    const p1, 0x7f0b012d

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 746
    :cond_5
    const p1, 0x7f0b012c

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 751
    :cond_6
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 752
    const-string p1, "PickListActivity1_report_action"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 753
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_9

    .line 754
    if-eqz v5, :cond_7

    if-eqz v4, :cond_7

    .line 755
    const p1, 0x7f0b012f

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 758
    :cond_7
    if-eqz v5, :cond_8

    .line 759
    const p1, 0x7f0b012e

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 762
    :cond_8
    if-eqz v4, :cond_2

    .line 763
    const p1, 0x7f0b012d

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 767
    :cond_9
    const p1, 0x7f0b012b

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_a
    move v9, v6

    move v6, v5

    move v5, v9

    goto/16 :goto_2

    :cond_b
    move v9, v7

    move v7, v4

    move v4, v9

    goto/16 :goto_1
.end method

.method private a(Ljava/util/ArrayList;Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 642
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 644
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 645
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 646
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 648
    const-string v0, "address"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    const-string v4, "body"

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 653
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 654
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static {v5, v0, v4, v6, v7}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 660
    :cond_1
    return-object v1
.end method

.method private a(Z)Ljava/util/ArrayList;
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 970
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->b()Ljava/util/ArrayList;

    move-result-object v6

    .line 972
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 974
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->getCursor()Landroid/database/Cursor;

    move-result-object v8

    .line 976
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 980
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 981
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    const-string v0, "address"

    :goto_0
    move-object v10, v0

    :goto_1
    move v11, v13

    .line 991
    :goto_2
    if-ge v11, v9, :cond_5

    .line 992
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 993
    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 995
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    const-string v0, "address"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    if-eqz v0, :cond_7

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v3, Ljava/lang/String;

    const-string v0, "msg_id=? and type=137"

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/addr"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v13

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1002
    :goto_4
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1004
    if-eqz p1, :cond_4

    .line 1005
    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    :cond_0
    :goto_5
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto/16 :goto_2

    .line 986
    :cond_1
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 987
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_2

    const-string v0, "data1"

    goto/16 :goto_0

    :cond_2
    const-string v0, "number"

    goto/16 :goto_0

    .line 1000
    :cond_3
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1007
    :cond_4
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1010
    :cond_5
    return-object v7

    :cond_6
    move-object v1, v12

    goto :goto_3

    :cond_7
    move-object v0, v12

    goto :goto_4

    :cond_8
    move-object v10, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->K:Ljava/util/HashMap;

    return-object p1
.end method

.method private declared-synchronized a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->R:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    monitor-exit p0

    return-void

    .line 1206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->N:Lcom/ijinshan/kinghelper/common/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->N:Lcom/ijinshan/kinghelper/common/q;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b(Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private a(Lcom/ijinshan/kinghelper/common/u;)V
    .locals 3
    .parameter

    .prologue
    .line 1142
    iget-object v0, p1, Lcom/ijinshan/kinghelper/common/u;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1144
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1145
    invoke-static {p0, v0}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 1149
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    .line 1150
    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .parameter

    .prologue
    .line 785
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b(Ljava/util/ArrayList;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 794
    :cond_2
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b(Ljava/util/ArrayList;)V

    .line 796
    invoke-direct {p0, p1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->O:Z

    return p1
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/common/PickListActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/ijinshan/kinghelper/common/PickListActivity;->o:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1488
    if-nez p0, :cond_0

    .line 1489
    const-string v0, "#"

    .line 1502
    :goto_0
    return-object v0

    .line 1492
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1493
    const-string v0, "#"

    goto :goto_0

    .line 1496
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1498
    const-string v1, "^[A-Za-z]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1502
    :cond_2
    const-string v0, "#"

    goto :goto_0
.end method

.method private b(I)V
    .locals 4
    .parameter

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p1, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1449
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->N:Lcom/ijinshan/kinghelper/common/q;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1451
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->M:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->N:Lcom/ijinshan/kinghelper/common/q;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1453
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h()V

    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 18
    .parameter

    .prologue
    .line 808
    const-string v3, "number"

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 809
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    const/4 v9, 0x0

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "date DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 817
    if-eqz v3, :cond_5

    .line 818
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 819
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 821
    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 822
    const-string v6, "type"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 824
    const-string v7, "number"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 828
    const-string v8, "duration"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 830
    const-string v9, "date"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 833
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 837
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 838
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 839
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 840
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 842
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 843
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 845
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 847
    const-string v17, "type"

    move-object v0, v10

    move-object/from16 v1, v17

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v12, "number"

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v12, "new"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v12, "duration"

    invoke-virtual {v10, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string v12, "date"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 852
    const-string v12, "firewall_log_description"

    const v13, 0x7f0b0110

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v12, "firewall_log_rule_id"

    const-string v13, "0"

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {v10}, Lcom/ijinshan/kinghelper/firewall/a/a;->b(Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 858
    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 859
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v4, v9

    .line 863
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .line 866
    :goto_2
    const-string v4, "_id"

    invoke-static {v4, v3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 868
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object v3, v9

    goto :goto_2
.end method

.method static synthetic c()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/ijinshan/kinghelper/common/PickListActivity;->l:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 24
    .parameter

    .prologue
    .line 881
    const-string v3, "address"

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    .line 883
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    const/4 v9, 0x0

    .line 888
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/a/w;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "date DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 892
    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 894
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 896
    const-string v5, "_id"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 897
    const-string v6, "address"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 899
    const-string v7, "subject"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 901
    const-string v8, "service_center"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 904
    const-string v9, "protocol"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 906
    const-string v10, "person"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 908
    const-string v11, "body"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 910
    const-string v12, "date"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 913
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 915
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 917
    :cond_2
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 918
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 919
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 920
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 921
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 924
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 925
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 926
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 927
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 929
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 931
    const-string v23, "address"

    move-object v0, v13

    move-object/from16 v1, v23

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v15, "subject"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v15, "service_center"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v15, "read"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v15, "protocol"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v15, "person"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v15, "body"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v15, "date"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 939
    const-string v15, "firewall_log_description"

    const v16, 0x7f0b0110

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v15, "firewall_log_time"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    const-string v15, "firewall_log_rule_id"

    const-string v16, "0"

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v15, "firewall_from"

    sget v16, Lcom/ijinshan/kinghelper/firewall/a/a;->e:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    const-string v15, "logtype"

    sget v16, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    invoke-static {v13}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 949
    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_2

    .line 950
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 953
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .line 956
    :goto_2
    const-string v4, "_id"

    invoke-static {v4, v3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 957
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object v3, v9

    goto :goto_2
.end method

.method static synthetic d(Lcom/ijinshan/kinghelper/common/PickListActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    return v0
.end method

.method private d()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    .line 298
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 300
    const-string v3, "date DESC"

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_0
    move-object v6, v2

    move-object v5, v2

    move-object v7, v0

    .line 326
    :goto_1
    if-eqz v3, :cond_6

    .line 327
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->G:Lcom/ijinshan/kinghelper/common/t;

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/ijinshan/kinghelper/common/t;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :goto_2
    return-void

    .line 302
    :cond_0
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 304
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/jxphone/mosecurity/d/l;->c:Z

    if-eqz v0, :cond_2

    .line 305
    :cond_1
    sget-object v0, Landroid/a/w;->a:Landroid/net/Uri;

    .line 306
    const-string v3, "date DESC"

    .line 307
    const-string v4, "address !=? "

    .line 308
    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "wappush_message"

    aput-object v7, v5, v6

    move-object v6, v5

    move-object v7, v3

    move-object v5, v4

    move-object v3, v0

    goto :goto_1

    .line 310
    :cond_2
    const-string v0, "content://mms-sms/conversations?simple=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 311
    const-string v3, "date DESC"

    move-object v6, v2

    move-object v5, v2

    move-object v7, v3

    move-object v3, v0

    .line 313
    goto :goto_1

    .line 317
    :cond_3
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 320
    const/4 v3, 0x4

    if-le v0, v3, :cond_4

    sget-object v3, Lcom/ijinshan/kinghelper/a/e;->h:Landroid/net/Uri;

    .line 322
    :goto_3
    const/4 v4, 0x7

    if-le v0, v4, :cond_5

    const-string v0, "sort_key"

    goto :goto_0

    .line 320
    :cond_4
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    .line 322
    :cond_5
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    goto :goto_0

    .line 330
    :cond_6
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a()V

    goto :goto_2

    :cond_7
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    move-object v3, v2

    goto :goto_1
.end method

.method private e()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 432
    new-instance v2, Lcom/keniu/security/util/aq;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 434
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 436
    const v0, 0x7f08011b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 438
    const v1, 0x7f08011d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 440
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->k()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 442
    const v4, 0x7f0b0143

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 443
    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    .line 444
    const v0, 0x7f0b0144

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 445
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ijinshan/kinghelper/common/j;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/common/j;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 468
    const v0, 0x7f0b0146

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ijinshan/kinghelper/common/k;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/common/k;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 486
    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 487
    new-instance v2, Lcom/ijinshan/kinghelper/common/l;

    invoke-direct {v2, p0, v1}, Lcom/ijinshan/kinghelper/common/l;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/ap;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 500
    return-object v0
.end method

.method static synthetic e(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method private f()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 504
    new-instance v0, Lcom/keniu/security/util/aq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 506
    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 507
    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 509
    const v1, 0x7f0b0145

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/common/m;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/common/m;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 521
    const v1, 0x7f0b0146

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/common/n;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/common/n;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 530
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    .line 532
    return-object v0
.end method

.method static synthetic f(Lcom/ijinshan/kinghelper/common/PickListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    return v0
.end method

.method static synthetic g(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->H:Landroid/widget/ListView;

    return-object v0
.end method

.method private g()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0b01cd

    const/16 v10, 0x3000

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 540
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 542
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 543
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 545
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 546
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 547
    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 548
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 549
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 551
    const-string v0, "number"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 554
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v0, v12, v7, v12}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 547
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 561
    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 564
    invoke-virtual {p0, v11}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {p0, v10}, Lcom/ijinshan/kinghelper/common/PickListActivity;->showDialog(I)V

    .line 607
    :cond_2
    :goto_1
    return-void

    .line 569
    :cond_3
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h()V

    .line 571
    sget-object v1, Lcom/ijinshan/kinghelper/common/PickListActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 574
    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-static {p0, v4, v9, v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 578
    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 579
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto :goto_1

    .line 582
    :cond_5
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 587
    invoke-direct {p0, v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/util/ArrayList;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 589
    invoke-virtual {p0, v11}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 592
    invoke-virtual {p0, v10}, Lcom/ijinshan/kinghelper/common/PickListActivity;->showDialog(I)V

    goto :goto_1

    .line 594
    :cond_6
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h()V

    .line 596
    sget-object v2, Lcom/ijinshan/kinghelper/common/PickListActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 599
    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-static {p0, v1, v9, v0, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 603
    :cond_7
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 604
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto :goto_1
.end method

.method static synthetic h(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->p:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 665
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    const v0, 0x7f0b0130

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 673
    :goto_0
    return-void

    .line 669
    :cond_0
    const v0, 0x7f0b0131

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private i()Ljava/util/ArrayList;
    .locals 19

    .prologue
    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/common/r;->b()Ljava/util/ArrayList;

    move-result-object v8

    .line 1015
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/common/r;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    .line 1018
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1022
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    const/4 v2, 0x1

    move v12, v2

    .line 1023
    :goto_0
    if-eqz v12, :cond_3

    .line 1024
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1025
    const-string v3, "data1"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1026
    const-string v4, "contact_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1027
    const-string v5, "data2"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move v13, v5

    move v14, v3

    move v15, v2

    move/from16 v16, v4

    .line 1035
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1036
    const/4 v3, 0x0

    move/from16 v17, v3

    :goto_2
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_5

    .line 1037
    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1038
    invoke-interface {v10, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1040
    new-instance v18, Lcom/ijinshan/kinghelper/common/ContactItem;

    invoke-direct/range {v18 .. v18}, Lcom/ijinshan/kinghelper/common/ContactItem;-><init>()V

    .line 1042
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/ijinshan/kinghelper/common/ContactItem;->b:Ljava/lang/String;

    .line 1043
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/ijinshan/kinghelper/common/ContactItem;->a:Ljava/lang/String;

    .line 1044
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Lcom/ijinshan/kinghelper/common/ContactItem;->c:I

    .line 1049
    move-object v0, v10

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1050
    if-eqz v12, :cond_4

    .line 1057
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://com.android.contacts/contacts/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    const-string v3, "/photo"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1065
    const-string v4, "data15"

    move-object v5, v4

    .line 1075
    :goto_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1077
    if-eqz v3, :cond_1

    .line 1079
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1080
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1081
    if-eqz v4, :cond_0

    .line 1082
    move-object v0, v4

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/ijinshan/kinghelper/common/ContactItem;->d:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1090
    :cond_1
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto/16 :goto_2

    .line 1022
    :cond_2
    const/4 v2, 0x0

    move v12, v2

    goto/16 :goto_0

    .line 1029
    :cond_3
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1030
    const-string v3, "number"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1031
    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1032
    const-string v5, "type"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move v13, v5

    move v14, v3

    move v15, v2

    move/from16 v16, v4

    goto/16 :goto_1

    .line 1067
    :cond_4
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v3

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1069
    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1072
    const-string v4, "data"

    move-object v5, v4

    goto :goto_3

    .line 1086
    :catchall_0
    move-exception v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1093
    :cond_5
    return-object v9
.end method

.method static synthetic i(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->K:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    return-object v0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1103
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    if-nez v0, :cond_0

    move v0, v2

    .line 1119
    :goto_0
    return v0

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 1109
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/r;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1110
    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->z:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 1111
    goto :goto_0

    .line 1115
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1116
    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    .line 1117
    goto :goto_0

    .line 1119
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private k()V
    .locals 6

    .prologue
    const/4 v1, -0x2

    .line 1417
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1418
    const v2, 0x7f0300cb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    .line 1419
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1420
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x2

    const/16 v4, 0x18

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1426
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1428
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    return-void
.end method

.method static synthetic k(Lcom/ijinshan/kinghelper/common/PickListActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->O:Z

    return v0
.end method

.method static synthetic l(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->q:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic m(Lcom/ijinshan/kinghelper/common/PickListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/ijinshan/kinghelper/common/PickListActivity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->L:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 1155
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    const v0, 0x7f0b014a

    iput v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->z:I

    .line 1167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->s:Landroid/widget/TextView;

    iget v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->z:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1168
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->q:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1169
    return-void

    .line 1159
    :cond_1
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1161
    const v0, 0x7f0b0149

    iput v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->z:I

    goto :goto_0

    .line 1163
    :cond_2
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1165
    const v0, 0x7f0b014b

    iput v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->z:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0b01cd

    const/16 v10, 0x3000

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008f

    if-ne v0, v1, :cond_c

    .line 338
    const-string v0, "PickListActivity1_report_action"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 339
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->b()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-ge v5, v3, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v0, "number"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v6, v0, v12, v7, v12}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v11}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v10}, Lcom/ijinshan/kinghelper/common/PickListActivity;->showDialog(I)V

    .line 385
    :cond_2
    :goto_1
    return-void

    .line 340
    :cond_3
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h()V

    sget-object v1, Lcom/ijinshan/kinghelper/common/PickListActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-static {p0, v4, v9, v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    :cond_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto :goto_1

    :cond_5
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Ljava/util/ArrayList;Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v11}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v10}, Lcom/ijinshan/kinghelper/common/PickListActivity;->showDialog(I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->h()V

    sget-object v2, Lcom/ijinshan/kinghelper/common/PickListActivity;->o:Ljava/lang/String;

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-static {p0, v1, v9, v0, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    :cond_7
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto :goto_1

    .line 343
    :cond_8
    const-string v0, "PickListActivity1_white_action"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 344
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0, v8}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 346
    iget v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-static {p0, v0, v8, v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 349
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 350
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto :goto_1

    .line 353
    :cond_9
    const-string v0, "_PickListActivity1_black_action"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 354
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    invoke-direct {p0, v8}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 356
    iget v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-static {p0, v0, v9, v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 362
    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 364
    :cond_a
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto/16 :goto_1

    .line 367
    :cond_b
    const-string v0, "PickListActivity1_onekeycall_action"

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 369
    invoke-direct {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->i()Ljava/util/ArrayList;

    move-result-object v0

    .line 371
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 373
    const-string v2, "contacts"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 375
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->setResult(ILandroid/content/Intent;)V

    .line 376
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    .line 378
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    goto/16 :goto_1

    .line 382
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080090

    if-ne v0, v1, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const v8, 0x7f0b014e

    const v6, 0x7f0b014d

    const v5, 0x7f0b00d5

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->requestWindowFeature(I)Z

    .line 145
    const v1, 0x7f030013

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->setContentView(I)V

    .line 147
    const v1, 0x7f080007

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/TextView;

    move-object v7, v0

    .line 148
    const/high16 v1, 0x7f0b

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->H:Landroid/widget/ListView;

    .line 151
    const v1, 0x7f08008d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->q:Landroid/widget/ProgressBar;

    .line 152
    const v1, 0x7f08008e

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->r:Landroid/view/View;

    .line 153
    const v1, 0x7f08004d

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->s:Landroid/widget/TextView;

    .line 154
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 155
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->r:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->s:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->s:Landroid/widget/TextView;

    const v2, 0x7f0b0148

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    const v1, 0x7f08008f

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->t:Landroid/widget/Button;

    .line 162
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->t:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v1, 0x7f080090

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->u:Landroid/widget/Button;

    .line 164
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->u:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    .line 167
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PickListActivity1_action_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "PickListActivity1_ec_conversion_sms"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    .line 172
    const-string v1, "vnd.android.cursor.dir/calls"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 173
    iput v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    .line 175
    const-string v1, "PickListActivity1_report_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    const v1, 0x7f0b0140

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 177
    const v1, 0x7f0b00cc

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 178
    iput v6, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    .line 237
    :cond_0
    :goto_0
    iget v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    if-nez v1, :cond_d

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    .line 256
    :cond_2
    :goto_1
    return-void

    .line 181
    :cond_3
    const-string v1, "PickListActivity1_white_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "_PickListActivity1_black_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :cond_4
    const v1, 0x7f0b00ff

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 184
    iput v5, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 185
    iput v8, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    goto :goto_0

    .line 189
    :cond_5
    const-string v1, "vnd.android.cursor.dir/sms"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 191
    const v1, 0x7f0b014c

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    .line 192
    iput v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    .line 194
    const-string v1, "PickListActivity1_report_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 195
    const v1, 0x7f0b0141

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 196
    const v1, 0x7f0b00cc

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 197
    iput v6, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    goto :goto_0

    .line 199
    :cond_6
    const-string v1, "PickListActivity1_white_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "_PickListActivity1_black_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    :cond_7
    const v1, 0x7f0b00fe

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 202
    iput v5, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 203
    iput v8, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    goto :goto_0

    .line 206
    :cond_8
    const-string v1, "vnd.android.cursor.dir/contact"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iput v6, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    .line 209
    iput v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->C:I

    .line 211
    const-string v1, "PickListActivity1_report_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 212
    const v1, 0x7f0b0142

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 213
    const v1, 0x7f0b00cc

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 214
    iput v6, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    .line 226
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->H:Landroid/widget/ListView;

    new-instance v2, Lcom/ijinshan/kinghelper/common/p;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/common/p;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 228
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->M:Landroid/os/Handler;

    .line 229
    new-instance v1, Lcom/ijinshan/kinghelper/common/q;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/common/q;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->N:Lcom/ijinshan/kinghelper/common/q;

    .line 230
    const v1, 0x7f08008c

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ijinshan/kinghelper/common/NumSortView;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->I:Lcom/ijinshan/kinghelper/common/NumSortView;

    .line 231
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->I:Lcom/ijinshan/kinghelper/common/NumSortView;

    invoke-virtual {v1, v4}, Lcom/ijinshan/kinghelper/common/NumSortView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->I:Lcom/ijinshan/kinghelper/common/NumSortView;

    new-instance v2, Lcom/ijinshan/kinghelper/common/o;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/common/o;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/common/NumSortView;->a(Lcom/ijinshan/kinghelper/common/c;)V

    .line 234
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300cb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/16 v5, 0x18

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 215
    :cond_a
    const-string v1, "PickListActivity1_white_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "_PickListActivity1_black_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "PickListActivity1_ec_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 218
    :cond_b
    const v1, 0x7f0b00fd

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 219
    iput v5, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 220
    iput v8, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    goto/16 :goto_2

    .line 221
    :cond_c
    const-string v1, "PickListActivity1_onekeycall_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 222
    const v1, 0x7f0b073f

    iput v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    .line 223
    iput v5, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    .line 224
    iput v8, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->A:I

    goto/16 :goto_2

    .line 242
    :cond_d
    iget v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->y:I

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->t:Landroid/widget/Button;

    iget v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->B:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 246
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 250
    new-instance v1, Lcom/ijinshan/kinghelper/common/t;

    invoke-direct {v1, p0, p0}, Lcom/ijinshan/kinghelper/common/t;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->G:Lcom/ijinshan/kinghelper/common/t;

    .line 252
    const-string v1, "PickListActivity1_ec_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 253
    const v1, 0x7f08008b

    invoke-virtual {p0, v1}, Lcom/ijinshan/kinghelper/common/PickListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b0146

    const v5, 0x7f0b0145

    const/4 v1, 0x0

    .line 284
    const/16 v0, 0x3000

    if-ne p1, v0, :cond_0

    .line 285
    new-instance v2, Lcom/keniu/security/util/aq;

    invoke-direct {v2, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f08011b

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f08011d

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->k()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v4, 0x7f0b0143

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v3}, Lcom/keniu/security/util/aq;->a(Landroid/view/View;)Lcom/keniu/security/util/aq;

    const v0, 0x7f0b0144

    invoke-virtual {v2, v0}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ijinshan/kinghelper/common/j;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/common/j;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/ijinshan/kinghelper/common/k;

    invoke-direct {v3, p0}, Lcom/ijinshan/kinghelper/common/k;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v2}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    new-instance v2, Lcom/ijinshan/kinghelper/common/l;

    invoke-direct {v2, p0, v1}, Lcom/ijinshan/kinghelper/common/l;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Lcom/keniu/security/util/ap;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 289
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const/16 v0, 0x4000

    if-ne p1, v0, :cond_1

    .line 287
    new-instance v0, Lcom/keniu/security/util/aq;

    invoke-direct {v0, p0, v1}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    const v1, 0x7f0b00c9

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    const v1, 0x7f0b00c8

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v5}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/common/m;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/common/m;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {p0, v6}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ijinshan/kinghelper/common/n;

    invoke-direct {v2, p0}, Lcom/ijinshan/kinghelper/common/n;-><init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1198
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 1199
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->E:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->F:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1200
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1201
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1125
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->J:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1127
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/u;

    .line 1128
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->p:Landroid/util/SparseBooleanArray;

    iget v2, v0, Lcom/ijinshan/kinghelper/common/u;->j:I

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1130
    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    .line 1139
    :goto_0
    return-void

    .line 1132
    :cond_1
    const-string v1, "PickListActivity1_ec_action"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1133
    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/u;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/protection/ui/ag;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->x:Lcom/ijinshan/kinghelper/common/r;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    goto :goto_0

    .line 1135
    :cond_3
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->p:Landroid/util/SparseBooleanArray;

    iget v2, v0, Lcom/ijinshan/kinghelper/common/u;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1136
    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/u;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v0, v3}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 260
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 261
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->q:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->s:Landroid/widget/TextView;

    const v3, 0x7f0b0148

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    const-string v0, "vnd.android.cursor.dir/calls"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "date DESC"

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    :goto_0
    move-object v6, v2

    move-object v5, v2

    move-object v7, v0

    :goto_1
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->G:Lcom/ijinshan/kinghelper/common/t;

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/ijinshan/kinghelper/common/t;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pick_list"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->F:Landroid/os/HandlerThread;

    .line 265
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->F:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 266
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->F:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->E:Landroid/os/Handler;

    .line 267
    return-void

    .line 263
    :cond_0
    const-string v0, "vnd.android.cursor.dir/sms"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->D:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/jxphone/mosecurity/d/l;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Landroid/a/w;->a:Landroid/net/Uri;

    const-string v3, "date DESC"

    const-string v4, "address !=? "

    new-array v5, v1, [Ljava/lang/String;

    const-string v6, "wappush_message"

    aput-object v6, v5, v7

    move-object v6, v5

    move-object v7, v3

    move-object v5, v4

    move-object v3, v0

    goto :goto_1

    :cond_2
    const-string v0, "content://mms-sms/conversations?simple=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "date DESC"

    move-object v6, v2

    move-object v5, v2

    move-object v7, v3

    move-object v3, v0

    goto :goto_1

    :cond_3
    const-string v0, "vnd.android.cursor.dir/contact"

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/PickListActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-le v0, v3, :cond_4

    sget-object v3, Lcom/ijinshan/kinghelper/a/e;->h:Landroid/net/Uri;

    :goto_3
    const/4 v4, 0x7

    if-le v0, v4, :cond_5

    const-string v0, "sort_key"

    goto :goto_0

    :cond_4
    sget-object v3, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_3

    :cond_5
    const-string v0, "display_name COLLATE LOCALIZED ASC"

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a()V

    goto :goto_2

    :cond_7
    move-object v6, v2

    move-object v5, v2

    move-object v7, v2

    move-object v3, v2

    goto :goto_1
.end method
