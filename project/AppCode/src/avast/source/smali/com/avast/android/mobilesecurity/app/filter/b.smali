.class Lcom/avast/android/mobilesecurity/app/filter/b;
.super Landroid/support/v4/e/a;
.source "FilterCallLogPickerFragment.java"


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Ljava/text/DateFormat;

.field c:Ljava/text/DateFormat;

.field d:Landroid/content/ContentResolver;

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 149
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->a:Landroid/view/LayoutInflater;

    .line 150
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->b:Ljava/text/DateFormat;

    .line 151
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->c:Ljava/text/DateFormat;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->d:Landroid/content/ContentResolver;

    .line 154
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->b:Ljava/text/DateFormat;

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->b:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 156
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 157
    const-string v2, "\\s?[/\\-]?\\s?yyyy\\s?[/\\-\\.]?\\s?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/b;->c(Landroid/database/Cursor;)V

    .line 161
    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/filter/c;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f0200f0

    .line 215
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->d:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->d:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/filter/c;->d(Lcom/avast/android/mobilesecurity/app/filter/c;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/filter/c;->d(Lcom/avast/android/mobilesecurity/app/filter/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/filter/c;->d(Lcom/avast/android/mobilesecurity/app/filter/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private c(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    const-string v0, "contact_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->e:I

    .line 171
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->f:I

    .line 172
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->h:I

    .line 173
    const-string v0, "number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->g:I

    .line 175
    const-string v0, "count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->i:I

    .line 176
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 238
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 254
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/filter/c;

    .line 193
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    iget v2, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->i:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 195
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 198
    :cond_0
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->a(Lcom/avast/android/mobilesecurity/app/filter/c;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v1, Ljava/util/Date;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->h:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 200
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->b(Lcom/avast/android/mobilesecurity/app/filter/c;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->b:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->c(Lcom/avast/android/mobilesecurity/app/filter/c;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->c:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0, p3, v0}, Lcom/avast/android/mobilesecurity/app/filter/b;->a(Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/filter/c;)V

    .line 212
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/b;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03007d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/c;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/c;-><init>(Lcom/avast/android/mobilesecurity/app/filter/a;)V

    .line 182
    const v0, 0x7f0701a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->a(Lcom/avast/android/mobilesecurity/app/filter/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f070140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->a(Lcom/avast/android/mobilesecurity/app/filter/c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 184
    const v0, 0x7f0701a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->b(Lcom/avast/android/mobilesecurity/app/filter/c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0701a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/c;->c(Lcom/avast/android/mobilesecurity/app/filter/c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 186
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/b;->c(Landroid/database/Cursor;)V

    .line 166
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
