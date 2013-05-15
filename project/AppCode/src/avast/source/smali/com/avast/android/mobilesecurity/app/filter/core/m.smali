.class Lcom/avast/android/mobilesecurity/app/filter/core/m;
.super Lcom/avast/android/mobilesecurity/app/filter/core/f;
.source "OutgoingCallReceiver.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->b:Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/core/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 33
    .line 35
    const-string v0, "outgoingCall"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 36
    if-eqz p2, :cond_2

    .line 37
    const-string v0, "lookupKey"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "phone"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 44
    :goto_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->b:Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;->a(Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_1
    return-void

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->b:Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;->setResultData(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->b:Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;

    invoke-static {v1, v5}, Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;->a(Lcom/avast/android/mobilesecurity/app/filter/core/OutgoingCallReceiver;Z)Z

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutgoingCallReceiver blocking call with key "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and number "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 55
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 56
    const-string v4, "lookupKey"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "phone"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "groupId"

    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v0, "type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v0, "direction"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/k;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 63
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/m;->a:Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->E:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v4, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_1

    .line 66
    :cond_1
    const-string v0, "OutgoingCallReceiver filter doesn\'t have enabled block outgoing call, skip this filter"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    move-object v3, p3

    goto/16 :goto_0
.end method
