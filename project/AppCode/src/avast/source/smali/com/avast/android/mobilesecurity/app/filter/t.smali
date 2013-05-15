.class Lcom/avast/android/mobilesecurity/app/filter/t;
.super Landroid/support/v4/e/a;
.source "FilterSmsPickerFragment.java"


# instance fields
.field a:Landroid/view/LayoutInflater;

.field b:Ljava/text/DateFormat;

.field c:Ljava/text/DateFormat;

.field d:Landroid/content/ContentResolver;

.field e:Ljava/util/regex/Pattern;

.field f:Ljava/util/regex/Pattern;

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 122
    const-string v0, ", "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->e:Ljava/util/regex/Pattern;

    .line 123
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->f:Ljava/util/regex/Pattern;

    .line 154
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->a:Landroid/view/LayoutInflater;

    .line 155
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->b:Ljava/text/DateFormat;

    .line 156
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->c:Ljava/text/DateFormat;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->d:Landroid/content/ContentResolver;

    .line 159
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->b:Ljava/text/DateFormat;

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->b:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 161
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "\\s?[/\\-]?\\s?yyyy\\s?[/\\-\\.]?\\s?"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 165
    :cond_0
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/t;->c(Landroid/database/Cursor;)V

    .line 166
    return-void
.end method

.method private a(Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/filter/u;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0200f0

    .line 220
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 225
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->d:Landroid/content/ContentResolver;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->d:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/filter/u;->e(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/filter/u;->e(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {p2}, Lcom/avast/android/mobilesecurity/app/filter/u;->e(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private c(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    const-string v0, "contact_uris"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->g:I

    .line 176
    const-string v0, "names"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->h:I

    .line 177
    const-string v0, "text"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->i:I

    .line 178
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->j:I

    .line 179
    const-string v0, "read"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->k:I

    .line 180
    const-string v0, "addresses"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->l:I

    .line 181
    const-string v0, "count"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->m:I

    .line 182
    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 247
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 250
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    return-object v1
.end method

.method public b(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 5
    .parameter

    .prologue
    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->l:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 267
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-object v1
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 199
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->h:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 200
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->m:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 201
    if-le v1, v4, :cond_1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 204
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/filter/u;

    .line 205
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->a(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->b(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/TextView;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->i:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v1, Ljava/util/Date;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->j:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 208
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->c(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->b:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->d(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->c:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->k:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 211
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->a(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 216
    :goto_1
    invoke-direct {p0, p3, v0}, Lcom/avast/android/mobilesecurity/app/filter/t;->a(Landroid/database/Cursor;Lcom/avast/android/mobilesecurity/app/filter/u;)V

    .line 217
    return-void

    .line 213
    :cond_0
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->a(Lcom/avast/android/mobilesecurity/app/filter/u;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/t;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030083

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 187
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/u;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/u;-><init>(Lcom/avast/android/mobilesecurity/app/filter/s;)V

    .line 188
    const v0, 0x7f0701a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->a(Lcom/avast/android/mobilesecurity/app/filter/u;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 189
    const v0, 0x7f070140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->a(Lcom/avast/android/mobilesecurity/app/filter/u;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 190
    const v0, 0x7f070111

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->b(Lcom/avast/android/mobilesecurity/app/filter/u;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0701a3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->c(Lcom/avast/android/mobilesecurity/app/filter/u;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0701a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v2, v0}, Lcom/avast/android/mobilesecurity/app/filter/u;->d(Lcom/avast/android/mobilesecurity/app/filter/u;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 193
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    return-object v1
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/t;->c(Landroid/database/Cursor;)V

    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
