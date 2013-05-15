.class public Lcom/avast/android/mobilesecurity/app/messageshield/k;
.super Landroid/os/AsyncTask;
.source "NewMessageScanTask.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/avast/android/mobilesecurity/app/messageshield/a;

.field private c:Lcom/avast/android/mobilesecurity/app/messageshield/b;

.field private d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/a;Lcom/avast/android/mobilesecurity/app/messageshield/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->b:Lcom/avast/android/mobilesecurity/app/messageshield/a;

    .line 53
    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->c:Lcom/avast/android/mobilesecurity/app/messageshield/b;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a(Ljava/util/List;)V

    .line 131
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/messageshield/k;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->c(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Remote scanning of message from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in background."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->b:Lcom/avast/android/mobilesecurity/app/messageshield/a;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->e:Lcom/avast/android/mobilesecurity/engine/p;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/p;)Lcom/avast/android/mobilesecurity/engine/k;

    move-result-object v1

    .line 147
    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/l;

    .line 153
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewMessageScanTask: Result for message from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 156
    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->a(Lcom/avast/android/mobilesecurity/engine/k;)Z

    move-result v0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NewMessageScanTask: Showing message shield for message from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v0, v2, v3, v1, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;Ljava/util/Set;Lcom/avast/android/mobilesecurity/engine/k;I)V

    .line 170
    :cond_0
    :goto_1
    return-void

    .line 150
    :cond_1
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/l;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Lcom/avast/android/mobilesecurity/engine/l;-><init>(Lcom/avast/android/mobilesecurity/engine/o;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->b(Lcom/avast/android/mobilesecurity/engine/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: The scan result of message with uuid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has errors."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 168
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->b(Ljava/util/List;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/messageshield/k;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 5
    .parameter

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Lcom/avast/android/mobilesecurity/app/messageshield/l;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/messageshield/l;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/k;)V

    .line 196
    new-instance v1, Lcom/avast/android/mobilesecurity/app/messageshield/m;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/m;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/k;Lcom/avast/android/mobilesecurity/app/filter/core/k;)V

    .line 210
    new-instance v0, Lcom/avast/android/mobilesecurity/app/messageshield/n;

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/n;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/k;Lcom/avast/android/mobilesecurity/app/filter/core/j;)V

    .line 227
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/filter/core/k;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 6
    .parameter

    .prologue
    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NewMessageScanTask: Saving message from: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for later rescan, message id: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    const-string v4, "uuid"

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v5, v5, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "message_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 241
    const-string v2, "date"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-wide v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    const-string v2, "scan_attempts"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    const-string v2, "type"

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->e:Lcom/avast/android/mobilesecurity/engine/p;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/p;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 244
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/avast/android/mobilesecurity/p;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;)Ljava/lang/Void;
    .locals 11
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 58
    aget-object v0, p1, v9

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    .line 60
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-object v2

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Local scanning of message from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in background."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->b:Lcom/avast/android/mobilesecurity/app/messageshield/a;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v5, v5, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->e:Lcom/avast/android/mobilesecurity/engine/p;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/p;)Lcom/avast/android/mobilesecurity/engine/k;

    move-result-object v10

    .line 69
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->u:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 74
    invoke-static {v10}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->c(Lcom/avast/android/mobilesecurity/engine/k;)Lcom/avast/android/mobilesecurity/engine/l;

    move-result-object v1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NewMessageScanTask: Result for message from: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/o;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    const-class v3, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v3}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ay()V

    .line 80
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->c:Lcom/avast/android/mobilesecurity/app/messageshield/b;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-interface {v0, v3, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/b;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/o;)V

    .line 82
    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->j:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->k:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->i:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->h:Lcom/avast/android/mobilesecurity/engine/o;

    if-eq v0, v3, :cond_1

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    if-ne v0, v1, :cond_2

    iget-object v0, v10, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, v10, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v8

    .line 88
    :goto_1
    if-eqz v0, :cond_3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewMessageScanTask: Showing message shield for message from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->d:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    const/high16 v3, 0x1000

    invoke-static {v0, v1, v2, v10, v3}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;Ljava/util/Set;Lcom/avast/android/mobilesecurity/engine/k;I)V

    goto/16 :goto_0

    :cond_2
    move v0, v9

    .line 82
    goto :goto_1

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v8

    .line 101
    :goto_2
    if-eqz v1, :cond_6

    :try_start_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "data_roaming"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v8, :cond_6

    .line 107
    :cond_4
    :goto_3
    if-eqz v0, :cond_7

    if-eqz v8, :cond_7

    .line 108
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a()V

    goto/16 :goto_0

    :cond_5
    move v0, v9

    .line 98
    goto :goto_2

    :cond_6
    move v8, v9

    .line 101
    goto :goto_3

    .line 104
    :catch_0
    move-exception v1

    .line 105
    const-string v3, "NewMessageScanTask: Could not read the roaming settings."

    invoke-static {v3, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 110
    :cond_7
    const-string v0, "NewMessageScanTask: Connection not available."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 120
    invoke-direct {p0, v2}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->b(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 36
    check-cast p1, [Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/k;->a([Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
