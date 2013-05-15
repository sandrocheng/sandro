.class public Lcom/avast/android/generic/notification/a;
.super Ljava/lang/Object;
.source "AvastNotification.java"


# instance fields
.field a:J

.field public b:J

.field public c:J

.field d:Ljava/lang/CharSequence;

.field public e:I

.field public f:I

.field public g:Lcom/avast/android/generic/notification/AvastPendingIntent;

.field public h:J

.field i:Ljava/lang/CharSequence;

.field j:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->b:J

    .line 87
    iput-wide p1, p0, Lcom/avast/android/generic/notification/a;->a:J

    .line 88
    invoke-virtual {p0, p3}, Lcom/avast/android/generic/notification/a;->a(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->h:J

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->b:J

    .line 99
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->a:J

    .line 100
    const-string v0, "contentTitle"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    .line 101
    const-string v0, "contentText"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    .line 102
    const-string v0, "flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/notification/a;->f:I

    .line 103
    const-string v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/notification/a;->e:I

    .line 104
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->h:J

    .line 105
    new-instance v0, Lcom/avast/android/generic/notification/AvastPendingIntent;

    invoke-direct {v0, p1}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    .line 106
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/avast/android/generic/notification/a;->d:Ljava/lang/CharSequence;

    .line 149
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    .line 130
    iput-object p2, p0, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->h:J

    .line 132
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/avast/android/generic/notification/AvastPendingIntent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/avast/android/generic/notification/a;->i:Ljava/lang/CharSequence;

    .line 117
    iput-object p2, p0, Lcom/avast/android/generic/notification/a;->j:Ljava/lang/CharSequence;

    .line 118
    iput-object p3, p0, Lcom/avast/android/generic/notification/a;->g:Lcom/avast/android/generic/notification/AvastPendingIntent;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/generic/notification/a;->h:J

    .line 120
    return-void
.end method
